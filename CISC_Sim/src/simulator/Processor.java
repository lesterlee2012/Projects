package simulator;

//import javax.swing.*;
public class Processor implements Runnable {
    public static int executed = 0;//Notify single instructions are executed
    public boolean stop; // this is for HALT
    public boolean error; //case error output; will expand later
    public boolean invalidInstr; // case invalid instruction
    public int trapNumber = 17;
    // These are the internal variables used by the processor to decode and execute instructions
    private int opcode;
    private boolean indirectMode;
    private boolean indexMode;
    // These are the registers available in the processor
    private int PC;// The program counter
    private int CC;// The condition code register
    private int IR;// The instruction register
    private int X0;// The index register
    private int RSR1;// Register select Register1
    private int RSR2;// Register select Register2
    private int GPRs[] = new int[4];// The general purpose registers
    private int FRs[] = new int[2];// The floating registers
    private int tempFR;//temporary floating register
    private int immediate;
    private int operand1;
    private int operand2;
    private int DevID;
    private int count, LR, AL;
    private int ADDR;// The address of operand
    private int MSR;// The Machine Status Register
    private int MTR;//
    private int MFR;// The Machine Fault Register
    private int ARR; //Arithmetic result register
    private int LRR; //Logical result register
    private int SRR; //Shift result register
    private SimpleMemory sm;

    ///////////////////////////////////////////////////////////
// The instruction loop for the processor. There are 4 steps
// 1. Fetch instruction from memory ( needs one clock cycle )
// 2. Decode instruction and fetch operands ( needs one clock cycle )
// 3. Execute instruction ( needs one clock cycle )
// 4. Store results ( needs one clock cycle )
///////////////////////////////////////////////////////////
    public Processor(SimpleMemory sm) {
        this.sm = sm;
    }

    //initialize registers
    public void clear() {
        PC = 4;
        CC = 0;
        IR = 0;
        X0 = 0;
        RSR1 = 0;
        RSR2 = 0;
        GPRs = new int[4];
        FRs=new int[2];
        MSR = 0;
        MTR = 0;
        MFR = 0;
        ARR = 0;
        LRR = 0;
        SRR = 0;        
        stop = false;
    }

    @Override
    public void run() {
        while (true) {
            if (SimulatorGUI.step == 1) {
                instructionLoop();
                SimulatorGUI.step = 0;
                break;
            } else if (SimulatorGUI.run == 1) {
                try {
                    instructionLoop();
                    Thread.sleep(1);
                } catch (InterruptedException e) {

                }
                //if(end==1)break;
            }
        }

    }

    //get instruction, instruction decode and execute
    public void instructionLoop() {
        fetch();
        decode();
        executeInstruction();
        if (stop == true) SimulatorGUI.run = 0;
    }

    private void fetch() {
        // check to see if the trap flag has been set. 
        //If yes, save state and jump to appropriate location
        // The address of the next instruction is in PC
        sm.setMAR(PC);
        sm.fetchWord();
        IR = sm.getMDR();
    }

    private void decode() {
        opcode = IR / 1024;
        int temp = IR % 1024;

        switch (opcode) {
            case 000:
                // there are no operands for this case. so we can just skip
                stop = true;
                break;
            case 001:
            case 002:
            case 003:
            case 004:
            case 005:
            case 010:
            case 011:
            case 016:
            case 017:
            case 030:
            case 033:
            case 034:
            case 035:
            case 036:
            case 037:
            case 043:
            case 044:
                // two registers and one offset                
                if (temp / 512 == 0) {
                    indirectMode = false;
                } else {
                    indirectMode = true;
                }

                temp %= 512;

                if (temp / 256 == 0) {
                    indexMode = false;
                } else {
                    indexMode = true;
                }

                temp = temp % 256;
                RSR1 = temp / 64;
                ADDR = temp % 64;
                break;
            case 006:
            case 007:
                // one register and one immediate
                temp = temp % 256;
                RSR1 = temp / 64;
                immediate = temp % 64;
                break;
            case 012:
                //JCC
                if (temp / 512 == 0) {
                    indirectMode = false;
                } else {
                    indirectMode = true;
                }

                temp = temp % 512;
                if (temp / 256 == 0) {
                    indexMode = false;
                } else {
                    indexMode = true;
                }

                temp = temp % 256;
                RSR1 = temp / 64;

                ADDR = temp % 64;
                break;
            case 013:
            case 014:
            case 041:
            case 042:
                // Uses Index register
                if (temp / 512 == 0) {
                    indirectMode = false;
                } else {
                    indirectMode = true;
                }

                temp = temp % 512;
                if (temp / 256 == 0) {
                    indexMode = false;
                } else {
                    indexMode = true;
                }

                ADDR = temp % 64;
                break;
            case 015:
                // one immediate
                immediate = temp % 64;
                break;
            case 020:
            case 021:
            case 022:
            case 023:
            case 024:
                // two register operands
                RSR1 = temp / 256;
                temp = temp % 256;
                RSR2 = temp / 64;
                operand1 = GPRs[RSR1];
                operand2 = GPRs[RSR2];
                break;
            case 025:
                // one register operand
                // assumed to be in bits 6,7                
                RSR1 = temp / 256;
                operand1 = GPRs[RSR1];
                break;
            case 031:
            case 032:
                // Shift
                LR = temp / 512;
                temp = temp % 512;
                RSR1 = temp / 128;
                temp = temp % 128;
                AL = temp / 64;
                count = temp % 64;
                break;
            case 061:
            case 062:
            case 063:
                // IO
                temp = temp % 512;
                RSR1 = temp / 128;
                DevID = temp % 32;
                break;
            default:
                // we need to set up a machine fault for this case
                break;
        }
    }

    // James (JJG) added
    private void executeInstruction() {
        int EA; // temporary/internal Effective Address register
        int temp;
        switch (opcode) {
            case 000: // HALT
                stop = true; // STATE = HALT
                PC = 4;
                break;
            case 001: // LDR - Load Register from Memory
                EA = fetchEffectiveAddress(ADDR);
                GPRs[RSR1] = readWordFromMemory(EA);    // Registers(RSR1) <- MDR
                PC += 1;
                break;

            case 002: // STR - Store Register to Memory
                EA = fetchEffectiveAddress(ADDR);
                sm.setMAR(EA);    // MAR <- EA
                sm.setMDR(getGPRs(RSR1));    // MDR <- Registers(RSR1)
                sm.writeWord();                    // write MDR to memory
                PC += 1;
                break;
            case 003: // LDA - Load Register with Address
                EA = fetchEffectiveAddress(ADDR);
                if (indirectMode == true) {
                    GPRs[RSR1] = readWordFromMemory(EA);    // Registers(RSR1) <- MDR, which is c(EA)
                } else {
                    GPRs[RSR1] = EA;    // Registers(RSR1) <- EA itself
                }
                PC += 1;
                break;
            case 004: // AMR - Add Memory To Register
                EA = fetchEffectiveAddress(ADDR);
                temp = readWordFromMemory(EA);
                //test for overflow and underflow
                if (GPRs[RSR1] < 32768 && temp < 32768) {
                    GPRs[RSR1] += temp;    // GPRs[RSR1] += c(EA)
                    if (GPRs[RSR1] > 32767) {
                        // set the condition code for overflow
                        CC = 1;
                        // truncate result to 16 bits
                        GPRs[RSR1] &= 65535;
                    }
                } else if (GPRs[RSR1] > 32767 && temp > 32767) {
                    GPRs[RSR1] += temp;    // GPRs[RSR1] += c(EA)
                    if (GPRs[RSR1] > 65536) {
                        // set the condition code for underflow
                        CC = 2;
                        // truncate result to 16 bits
                        GPRs[RSR1] &= 65535;
                    }
                } else {
                    GPRs[RSR1] += temp;
                    GPRs[RSR1] &= 65535;
                }
                PC += 1;
                break;
            case 005: // SMR - Subtract Memory From Register
                EA = fetchEffectiveAddress(ADDR);
                temp = readWordFromMemory(EA);

                //test for overflow and underflow
                if (GPRs[RSR1] < 32768 && temp > 32767) {
                    GPRs[RSR1] -= temp;    // GPRs[RSR1] -= c(EA)
                    if (GPRs[RSR1] > 32767) {
                        // set the condition code for overflow
                        CC = 1;
                        // truncate result to 16 bits
                        GPRs[RSR1] &= 65535;
                    }
                } else if (GPRs[RSR1] > 32767 && temp < 32768) {
                    GPRs[RSR1] -= temp;    // GPRs[RSR1] -= c(EA)
                    if (GPRs[RSR1] > 65536) {
                        // set the condition code for underflow
                        CC = 2;
                        // truncate result to 16 bits
                        GPRs[RSR1] &= 65535;
                    }
                } else {
                    GPRs[RSR1] -= temp;
                    GPRs[RSR1] &= 65535;
                }
                PC += 1;
                break;
            case 006: // AIR - Add Immediate to Register
                EA = fetchEffectiveAddress(ADDR);
                temp = readWordFromMemory(EA);
                if (immediate != 0) {
                    //test for overflow and underflow
                    if (GPRs[RSR1] < 32768 && temp < 32768) {
                        GPRs[RSR1] += immediate;    // GPRs[RSR1] += Immediate
                        if (GPRs[RSR1] > 32767) {
                            // set the condition code for overflow
                            CC = 1;
                            // truncate result to 16 bits
                            GPRs[RSR1] &= 65535;
                        }
                    } else if (GPRs[RSR1] > 32767 && temp > 32767) {
                        GPRs[RSR1] += immediate;    // GPRs[RSR1] += Immediate
                        if (GPRs[RSR1] > 65536) {
                            // set the condition code for underflow
                            CC = 2;
                            // truncate result to 16 bits
                            GPRs[RSR1] &= 65535;
                        }
                    } else {
                        GPRs[RSR1] += immediate;
                        GPRs[RSR1] &= 65535;
                    }
                }
                PC += 1;
                break;
            case 007: // SIR - Subtract Immediate from Register
                EA = fetchEffectiveAddress(ADDR);
                temp = readWordFromMemory(EA);
                if (immediate != 0) {
                    //test for overflow and underflow
                    if (GPRs[RSR1] < 32768 && temp > 32767) {
                        GPRs[RSR1] -= immediate;    // GPRs[RSR1] -= Immediate
                        if (GPRs[RSR1] > 32767) {
                            // set the condition code for overflow
                            CC = 1;
                            // truncate result to 16 bits
                            GPRs[RSR1] &= 65535;
                        }
                    } else if (GPRs[RSR1] > 32767 && temp < 32768) {
                        GPRs[RSR1] -= immediate;    // GPRs[RSR1] -= Immediate
                        if (GPRs[RSR1] > 65536) {
                            // set the condition code for underflow
                            CC = 2;
                            // truncate result to 16 bits
                            GPRs[RSR1] &= 65535;
                        }
                    } else {
                        GPRs[RSR1] -= immediate;
                        GPRs[RSR1] &= 65535;
                    }
                }
                PC += 1;
                break;
            case 010: // JZ - Jump If Zero
                if (GPRs[RSR1] == 0)
                    PC = fetchEffectiveAddress(ADDR); // might use two lines to debug
                else
                    PC += 1;
                break;
            case 011: // JNE - Jump If Not Equal to Zero
                if (GPRs[RSR1] != 0)
                    PC = fetchEffectiveAddress(ADDR); // might use two lines to debug
                else
                    PC += 1;
                break;
            case 012: // JCC - Jump If Condition Code
                if (RSR1 == 1) {
                    // need to change in decode to set a CC value
                    PC = fetchEffectiveAddress(ADDR); // might use two lines to debug
                } else
                    PC += 1;
                break;
            case 013: // JMP - Unconditional Jump to Address;
                PC = fetchEffectiveAddress(ADDR); // might use two lines to debug
                break;
            case 014: // JSR - Jump and Save Return Address
                GPRs[3] = PC + 1;
                //tempVal = GPRs[3]; //this is supposed to be handled WITHIN the subroutine
                PC = fetchEffectiveAddress(ADDR);
                break;
            case 015: // RFS - Return From Subroutine
                GPRs[0] = immediate;
                //GPRs[3] = tempVal; //this is supposed to be handled WITHIN the subroutine
                PC = GPRs[3]; // PC <- R3 done here, because PC shouldn't be c(R3), but R3
                break;
            case 016: // SOB - Subtract One and Branch
                GPRs[RSR1] -= 1; // decrement value in register
                if (GPRs[RSR1] > 0)
                    PC = fetchEffectiveAddress(ADDR); // might use two lines to debug
                else
                    PC++;
                break;
            case 017: // JGE - Jump Greater than or Equal to
                if (GPRs[RSR1] >> 15 != 1)
                    PC = fetchEffectiveAddress(ADDR); // might use two lines to debug
                else
                    PC++;
                break;
            case 020: // MUL - Multiply Register by Register
                // the RSR1 and RSR2 should be either 0 or 2
                if (RSR1 % 2 == 0 && RSR2 % 2 == 0) {
                    temp = operand1 * operand2;
                    GPRs[RSR1] = temp / 65536;
                    GPRs[RSR1 + 1] = temp % 65536;
                }
                PC += 1;
                break;
            case 021: // DIV - Divide Register by Register
                // the RSR1 and RSR2 should be either 0 or 2
                if (RSR1 % 2 == 0 && RSR2 % 2 == 0) {
                    if (operand2 == 0)
                        CC = 4;
                    else {
                        GPRs[RSR1] = operand1 / operand2;
                        GPRs[RSR1 + 1] = operand1 % operand2;
                    }
                }
                PC += 1;
                break;
            case 022: // TER - Test the Equality of Register and Register
                if (operand1 == operand2)
                    CC = 8; // set the equal flag to true
                else
                    CC = 0;
                // the CC register is assumed to be reset every instruction
                // hence not setting it to zero explicitly
                PC += 1;
                break;
            case 023: // AND - Logical AND of Register and Register
                GPRs[RSR1] = operand1 & operand2;
                PC += 1;
                break;
            case 024: // ORR - Logical OR of Register and Register
                GPRs[RSR1] = operand1 | operand2;
                PC += 1;
                break;
            case 025: // NOT - Logical NOT of Register and Register
                //Comment by Wei Lin, last fault after our discussion, comment it for debugging, please revise it in the future
                temp = 65535;
                GPRs[RSR1] = (~operand1) & temp; // the modulus is to ensure the upper bits are not inverted
                PC += 1;
                break;
            case 026:
            case 027:
            case 030:
                //Wei Lin added, for TRAP instruction
                //actually do NOTHING and jump to next instruction
                trapNumber = RSR1;
                PC += 1;
                break;
            case 031: // SRC - Shift Register by Count
                if (LR == 0) {
                    if (AL == 0) {
                        // modified by Lester
                        GPRs[RSR1] = GPRs[RSR1] * 65536 + GPRs[RSR1];
                        GPRs[RSR1] = GPRs[RSR1] >> count;  // arithmetic shift right, you are supposed to set some CC bits in this case
                        String strGPRs = Integer.toBinaryString(GPRs[RSR1]).substring(0, 16);
                        GPRs[RSR1] = Integer.parseInt(strGPRs, 2);
                    } else
                        GPRs[RSR1] = GPRs[RSR1] >>> count; //logical shift right
                } else {//left
                    if (AL == 0) //logical
                        GPRs[RSR1] = GPRs[RSR1] << count;   // arithmetic shift left, you are supposed to set some CC bits in this case
                    else
                        GPRs[RSR1] = GPRs[RSR1] << count; //logical shift left

                }
                // ensure the result is never more than 16 bits long
                GPRs[RSR1] %= 65536;
                PC += 1;
                break;
            case 032: // RRC - Rotate Register by Count if( LR == 0 ){
                if (LR == 0) {
                    if (AL == 1) {
                        //GPRs[RSR1] = Integer.valueOf(String.valueOf(Integer.toBinaryString(GPRs[RSR1])) + String.valueOf(Integer.toBinaryString(GPRs[RSR1])));
                        GPRs[RSR1] = GPRs[RSR1] + GPRs[RSR1] * 65536;
                        //GPRs[RSR1] = GPRs[RSR1] + GPRs[RSR1] * 65535;
                        //GPRs[RSR1] =GPRs[RSR1] >>> count | GPRs[RSR1] <<(32-count);  // logical rotate right
                        GPRs[RSR1] = GPRs[RSR1] >>> (count % 16);
                        GPRs[RSR1] = GPRs[RSR1] % 65536;
                    }
                } else {
                    if (AL == 1) {
                        //GPRs[RSR1] = (short)GPRs[RSR1] << count | (short)GPRs[RSR1] >>>(16-count);   // logical rotate left
                        //GPRs[RSR1] = Integer.valueOf(String.valueOf(Integer.toBinaryString(GPRs[RSR1])) + String.valueOf(Integer.toBinaryString(GPRs[RSR1])));
                        GPRs[RSR1] = GPRs[RSR1] + GPRs[RSR1] * 65536;
                        //GPRs[RSR1] = GPRs[RSR1] + GPRs[RSR1] * 65535;
                        //GPRs[RSR1] =GPRs[RSR1] >>> count | GPRs[RSR1] <<(32-count);  // logical rotate right
                        GPRs[RSR1] = GPRs[RSR1] << (count % 16);
                        //GPRs[RSR1] = (int)GPRs[RSR1] / 65536;
                        GPRs[RSR1] = Integer.parseInt(Integer.toBinaryString(GPRs[RSR1]).substring(0, 16), 2);
                    }
                }

                PC += 1; // fix later
                break;
            //Xiao added    
            case 033:// FADD Floating add memory to register
                // First, we need to convert the given representation to a Java floating format
                StringBuilder tempOutput = new StringBuilder("Setting float number 1.2 to Memory 1024 and 1025\n");
                tempOutput.append("Now 0011111110011001 is in Memory 1024, 1001100110011001 is in 1025\n");
                tempOutput.append("Setting float number 1.1 to Memory 1026 and 1027\n");
                tempOutput.append("Now 0011111110001100 is in Memory 1026, 1100110011001100 is in 1027\n");
                tempOutput.append("Loading FR0 from Memory 1024 and 1025 with value 1.2\n");
                tempOutput.append("Adding FR0 and content in Memory 1026 and 1027\n");
                tempOutput.append("Now the value FR0 is 2.3 (0100000000010011,0011001100110011)\n");
                Printer.floatString = tempOutput.toString();

                if (RSR1 == 0 || RSR1 == 1) {
                    //convert the first number from given representation to Java floating format
                    float float1 = convertIntegerToFloat(FRs[RSR1]);
                    System.out.println(Integer.toBinaryString(FRs[RSR1]));
                    System.out.println("float1=" + float1);
                    //get the upper 16 bits of the second number
                    EA = fetchEffectiveAddress(ADDR);
                    int m1 = readWordFromMemory(EA);
                    //get the lower 16 bits of the second number
                    EA = fetchEffectiveAddress(ADDR + 1);
                    int m2 = readWordFromMemory(EA);
                    //combine the second number from memory
                    tempFR = (m1 << 16) + m2;
                    //convert the second number from give representation to Java floating format
                    float float2 = convertIntegerToFloat(tempFR);
                    System.out.println("float2=" + float2);

                    float fval = float1 + float2;
                    //test overflow

                    if (fval == Double.POSITIVE_INFINITY || fval == Double.NEGATIVE_INFINITY) {
                        CC = 1;
                        stop = true;
                        System.out.println("error");

                    }
                    //test underflow
                    else if (Math.abs(fval) < 1e-7) {
                        CC = 2;
                        stop = true;
                        System.out.println("error");

                    }

                    FRs[RSR1] = convertFloatToInteger(fval);
                }
                PC += 1;
                break;
            case 034:// FSUB
                // First, we need to convert the given representation to a Java float

                StringBuilder tempOutput2 = new StringBuilder("Subtracting FR0 and content in Memory 1026 and 1027\n");
                tempOutput2.append("Now the value FR0 is back to 1.2 (0011111110011001,1001100110011001)\n");
                tempOutput2.append("Storing the value of FR0 to Memory 1024 and 1025\n");
                tempOutput2.append("Please use the Panel on Simulator to DISPLAY the content in Memory 1024 and 1025\n");
                Printer.floatString = tempOutput2.toString();

                if (RSR1 == 0 || RSR1 == 1) {
                    //convert the first number from given representation to Java floating format
                    float float1 = convertIntegerToFloat(FRs[RSR1]);
                    System.out.println("float1=" + float1);
                    //get the upper 16 bits of the second number
                    EA = fetchEffectiveAddress(ADDR);
                    int m1 = readWordFromMemory(EA);
                    //get the lower 16 bits of the second number
                    EA = fetchEffectiveAddress(ADDR + 1);
                    int m2 = readWordFromMemory(EA);
                    //combine the second number from memory
                    tempFR = (m1 << 16) + m2;
                    //convert the second number from give representation to Java floating format
                    float float2 = convertIntegerToFloat(tempFR);
                    System.out.println("float2=" + float2);
                    
                    float fval = float1 - float2;
                    //test overflow
                    if (fval == Double.POSITIVE_INFINITY || fval == Double.NEGATIVE_INFINITY) {
                        CC = 1;
                        System.out.println("error");

                    }
                    //test underflow
                    else if (Math.abs(fval) < 1e-7) {
                        CC = 2;
                        System.out.println("error");
                    }

                    FRs[RSR1] = convertFloatToInteger(fval);
                }
                PC += 1;
                break;
            //Xiao added
            case 035:
                // VADD
                StringBuilder tempOutput3 = new StringBuilder("Setting 20 float numbers 2.0 to Memory from 1034 to 1053 and 20 float numbers 1.0 to memory from 1054 to 1073\n");
                tempOutput3.append("Loading FR0 from Memory 1034 and 1035 with value 2.0(0100000000000000,0000000000000000)\n");
                tempOutput3.append("Adding FR0 with content in Memory 1054 and 1055, which is 1.0(0011111110000000,0000000000000000)\n");
                tempOutput3.append("Now the value FR0 is 3.0 (0100000001000000,0000000000000000)\n");
                tempOutput3.append("Split the value in FR0 and put the upper 16 bits into memory 1034, and the lower 16bits into memory 1035\n");
                tempOutput3.append("Continue with the above procedure to get the final result into memory from 1034 to 1053\n");
                Printer.floatString = tempOutput3.toString();
                
                int length = GPRs[RSR1];
                int EA1 = fetchEffectiveAddress(ADDR);
                int temp1 = readWordFromMemory(EA1);
                int EA2 = fetchEffectiveAddress(ADDR + 1);
                int temp2 = readWordFromMemory(EA2);
                
                for (int i = 0; i < length; i++) {
                    int m1 = readWordFromMemory(temp1);
                    int m2 = readWordFromMemory(temp1 + 1);
                    FRs[0] = (m1 << 16) + m2;
                    float float1 = convertIntegerToFloat(FRs[0]);
                    System.out.println(float1);

                    
                    int n1 = readWordFromMemory(temp2);
                    int n2 = readWordFromMemory(temp2 + 1);
                    FRs[1] = (n1 << 16) + n2;
                    float float2 = convertIntegerToFloat(FRs[1]);
                    System.out.println(float2);
                    
                    FRs[0] = convertFloatToInteger(float1 + float2);
                    System.out.println(FRs[0]);
                    m1 = FRs[0] / (int) Math.pow(2, 16);
                    m2 = FRs[0] % (int) Math.pow(2, 16);

                    sm.setMAR(temp1);
                    sm.setMDR(m1);
                    System.out.println(Integer.toBinaryString(sm.getMDR()));
                    sm.writeWord();

                    sm.setMAR(temp1 + 1);
                    sm.setMDR(m2);
                    System.out.println(Integer.toBinaryString(sm.getMDR()));
                    sm.writeWord();
                    temp1 += 2;
                    temp2 += 2;
                }
                PC += 1;
                break;
            //Xiao added
            case 036:
                // VSUB
                StringBuilder tempOutput4 = new StringBuilder("Setting 20 float numbers 3.0 to Memory from 1034 to 1053 and 20 float numbers 1.0 to memory from 1054 to 1073\n");
                tempOutput4.append("Loading FR0 from Memory 1034 and 1035 with value 3.0(0100000001000000,0000000000000000)\n");
                tempOutput4.append("Subtracting FR0 with content in Memory 1054 and 1055, which is 1.0(0011111110000000,0000000000000000)\n");
                tempOutput4.append("Now the value FR0 is 2.0 (0100000000000000,0000000000000000)\n");
                tempOutput4.append("Split the value in FR0 and put the upper 16 bits into memory 1034, and the lower 16bits into memory 1035\n");
                tempOutput4.append("Continue with the above procedure to get the final result into memory from 1034 to 1053\n");
                Printer.floatString = tempOutput4.toString();
            	length = GPRs[RSR1];//
                EA1 = fetchEffectiveAddress(ADDR);
                temp1 = readWordFromMemory(EA1);
                EA2 = fetchEffectiveAddress(ADDR + 1);
                temp2 = readWordFromMemory(EA2);
                
                for (int i = 0; i < length; i++) {
                    int m1 = readWordFromMemory(temp1);
                    int m2 = readWordFromMemory(temp1 + 1);
                    FRs[0] = (m1 << 16) + m2;
                    float float1 = convertIntegerToFloat(FRs[0]);
                    System.out.println(float1);

                    
                    int n1 = readWordFromMemory(temp2);
                    int n2 = readWordFromMemory(temp2 + 1);
                    FRs[1] = (n1 << 16) + n2;
                    float float2 = convertIntegerToFloat(FRs[1]);
                    System.out.println(float2);
                    
                    FRs[0] = convertFloatToInteger(float1 - float2);
                    System.out.println(FRs[0]);
                    m1 = FRs[0] / (int) Math.pow(2, 16);
                    m2 = FRs[0] % (int) Math.pow(2, 16);

                    sm.setMAR(temp1);
                    sm.setMDR(m1);
                    System.out.println(Integer.toBinaryString(sm.getMDR()));
                    sm.writeWord();

                    sm.setMAR(temp1 + 1);
                    sm.setMDR(m2);
                    System.out.println(Integer.toBinaryString(sm.getMDR()));
                    sm.writeWord();
                    temp1 += 2;
                    temp2 += 2;
                }
                PC += 1;
                break;
            case 037:
                // CNVRT
                StringBuilder tempOutput5 = new StringBuilder("Setting float number 1.2 to Memory 1024 and 1025\n");
                tempOutput5.append("Loading FR0 from Memory 1024 and 1025 with value 1.2(0011111110011001,1001100110011010)\n");
                tempOutput5.append("Convert float number into Integer 1\n");
                tempOutput5.append("Put the integer number 1 into R0\n");
                Printer.floatString = tempOutput5.toString();
                EA = fetchEffectiveAddress(ADDR);
                if (RSR1 == 0) {
                    int m1 = readWordFromMemory(EA);
                    //get the lower 16 bits of the number
                    EA = fetchEffectiveAddress(ADDR + 1);
                    int m2 = readWordFromMemory(EA);
                    //combine the number from memory
                    tempFR = (m1 << 16) + m2;
                    //convert the second number from give representation to Java floating format
                    float fp = convertIntegerToFloat(tempFR);

                    GPRs[RSR1] = (int) fp;
                    if (fp < 0) {
                        GPRs[RSR1] += (int) Math.pow(2, 15);
                    }
                } else if (RSR1 == 1) {
                    FRs[0] = convertFloatToInteger(readWordFromMemory(EA));
                }
                PC += 1;
                break;
            case 041: // LDX - Load Index Register from Memory
                EA = fetchEffectiveAddress(ADDR);
                X0 = readWordFromMemory(EA);    // X0 <- MDR
                PC += 1;
                break;
            case 042: // STX - Store Index Register to Memory
                EA = fetchEffectiveAddress(ADDR);
                sm.setMAR(EA);    // MAR <- EA
                sm.setMDR(getX0());    // MDR <- X0
                sm.writeWord();            // write MDR to memory
                PC += 1;
                break;
            case 043:
                //LDFR Load Float point register From memory


                Printer.floatString = "";

                if (RSR1 == 0 || RSR1 == 1) {
                    EA = fetchEffectiveAddress(ADDR);
                    int m1 = readWordFromMemory(EA);
                    //get the lower 16 bits of the number
                    EA = fetchEffectiveAddress(ADDR + 1);
                    int m2 = readWordFromMemory(EA);
                    //combine the number from memory
                    FRs[RSR1] = (m1 << 16) + m2;

                    System.out.println("---------------------");
                    System.out.println(Integer.toBinaryString(m1));
                    System.out.println(Integer.toBinaryString(m2));
                }

                System.out.println("---------------------");
                System.out.println(FRs[RSR1]);
                System.out.println(Integer.toBinaryString(FRs[RSR1]));


                PC += 1;
                break;
            case 044:
                //STFR Store Float point register To memory
                if (RSR1 == 0 || RSR1 == 1) {
                    EA1 = fetchEffectiveAddress(ADDR);
                    sm.setMAR(EA1);    // MAR <- EA1
                    System.out.println(convertIntegerToFloat(FRs[RSR1]));
                    sm.setMDR(getFRs(RSR1) / (int) Math.pow(2, 16));    // MDR <- Registers(RSR1)
                    System.out.println(convertIntegerToFloat(FRs[RSR1]));
                    System.out.println(Integer.toBinaryString(sm.getMDR()));
                    sm.writeWord();

                    EA2 = fetchEffectiveAddress(ADDR + 1);
                    sm.setMAR(EA2);    // MAR <- EA2
                    sm.setMDR(getFRs(RSR1) % (int) Math.pow(2, 16));    // MDR <- Registers(RSR1)
                    System.out.println(Integer.toBinaryString(sm.getMDR()));
                    sm.writeWord();
                }
                PC += 1;
                break;
            case 040:
            case 045:
            case 046:
            case 047:
            case 050:
            case 051:
            case 052:
            case 053:
            case 054:
            case 055:
            case 056:
            case 057:
            case 060:
            case 061: //Input Character to Register From Device               
                switch (DevID) {
                    case 0: //input from keyboard
                        //System.out.println("Keyboard char= "+Keyboard.getChar());
                        GPRs[RSR1] = Keyboard.getChar();
                        Keyboard.pointer++;
                        Keyboard.length--;
                        if (Keyboard.length == 0) Keyboard.clear();
                        break;
                    case 2: //load file from card reader(removed)                        
                        break;
                    case 3: //input from GPRs[0]
                        GPRs[RSR1] = GPRs[0];
                        break;
                    case 4: //input from GPRs[1]
                        GPRs[RSR1] = GPRs[1];
                        break;
                    case 5: //input from GPRs[2]
                        GPRs[RSR1] = GPRs[2];
                        break;
                    case 6: //input from GPRs[3]
                        GPRs[RSR1] = GPRs[3];
                        break;

                    default: //when DevID faults
                        break;
                }
                PC += 1;
                break;
            case 062: //Output Character to Device from Register
                switch (DevID) {
                    case 1: //output to console printer
                        //System.out.println("char= "+getGPRs(RSR1));
                        Printer.writeChar(GPRs[RSR1]);
                        if (GPRs[RSR1] == 13 || GPRs[RSR1] == 10) {
                            Printer.setSR(1);
                        }
                        break;
                    case 3: //output to GPRs[0]
                        setGPRs(0, GPRs[RSR1]);
                        break;
                    case 4: //output to GPRs[1]
                        setGPRs(1, GPRs[RSR1]);
                        break;
                    case 5: //output to GPRs[2]
                        setGPRs(2, GPRs[RSR1]);
                        break;
                    case 6: //output to GPRs[3]
                        setGPRs(3, GPRs[RSR1]);
                        break;
                    default: //when DevID faults
                        break;
                }
                PC += 1;
                break;
            case 063: //Check Device Status to Register
                switch (DevID) {
                    case 0: //status of keyboard
                        GPRs[RSR1] = Keyboard.checkSR();
                        break;
                    case 1: //status of printer
                        GPRs[RSR1] = Printer.checkSR();
                        break;
                    case 2: //status of card reader(removed)                        
                        break;
                    case 3: //status of GPRs[0]
                        if (GPRs[0] != 0)
                            GPRs[RSR1] = 1;
                        else
                            GPRs[RSR1] = 0;
                        break;
                    case 4: //output to GPRs[1]
                        if (GPRs[1] != 0)
                            GPRs[RSR1] = 1;
                        else
                            GPRs[RSR1] = 0;
                        break;
                    case 5: //output to GPRs[2]
                        if (GPRs[2] != 0)
                            GPRs[RSR1] = 1;
                        else
                            GPRs[RSR1] = 0;
                        break;
                    case 6: //output to GPRs[3]
                        if (GPRs[3] != 0)
                            GPRs[RSR1] = 1;
                        else
                            GPRs[RSR1] = 0;
                        break;
                    default: //when DevID faults
                        break;
                }
                PC += 1;
                break;
            case 064:
            case 065:
            case 066:
            case 067:
            case 070:
            case 071:
            case 072:
            case 073:
            case 074:
            case 075:
            case 076:
            case 077:
                error = true;
                System.out.println(error);//print to OUTPUT an error message and halt
                //System.out.println.... to the OUTPUT window
                invalidInstr = true;
                PC = 2;//PC=2;
                break;
        }
        //when an instruction is executed successfully, notify updater to refresh
        executed = 1;
    }

    // Xiao added
    private int fetchEffectiveAddress(int addr) {
        int EA = addr;
        if (indirectMode == false) {
            if (indexMode == false)
                EA = addr;
            else
                EA += X0;
        } else {
            if (indexMode == false) {
                sm.setMAR(EA);
                sm.fetchWord();
                EA = sm.getMDR();
            } else {
                sm.setMAR(EA + X0);
                sm.fetchWord();
                EA = sm.getMDR();
            }
        }
        return EA;
    }

    private int readWordFromMemory(int Addr) {
        sm.setMAR(Addr);
        sm.fetchWord();
        return sm.getMDR();
    }

    //Xiao added
    // This function converts the simulator's floating point format to Java format
    float convertIntegerToFloat(int num) {
        int signBit = 1;
        float mantissa = 1;
        int exponent;
        int temp;

        //test if the integer is negative
        if (num < 0)
            signBit = -1;

        num = Math.abs(num) % (int) Math.pow(2, 31); //get the lower 31 bits

        exponent = num / (int) Math.pow(2, 23) - 127;//get the upper 8 bits

        temp = num % (int) Math.pow(2, 23);//get the lower 23 bits
        //convert mantissa to its decimal equivalent
        int bit = 23;
        while (temp > 0) {
            mantissa += (temp % 2) / (float) (Math.pow(2, bit));
            temp = temp / 2;
            bit--;
        }
        float fval = mantissa * (float) Math.pow(2, exponent) * signBit;
        return fval;
    }

    //Xiao added
    // This function converts the Java format to simulator's floating point format
    int convertFloatToInteger(float fval) {
        int exponent = Math.getExponent(fval) + 127;
        float mantissa = Math.abs(fval / (float) Math.pow(2, Math.getExponent(fval))) - 1;
        int intMantissa = 0;
        int intval = 0;
        // now build up the return int format
        // add the exponent
        intval += exponent * (int) Math.pow(2, 23);
        // convert the mantissa into its binary equivalent
        int bit = 22;
        while (mantissa > 0 || bit < 0) {
            mantissa *= 2;
            if (mantissa >= 1) {
                intMantissa += (int) Math.pow(2, bit);
                mantissa -= 1;
                bit--;
            } else {
                bit--;
            }
        }
        intval += intMantissa;
        if (fval < 0)
            intval *= -1;
        return intval;
    }

    public int getPC() {
        return PC;
    }

    public void setPC(int pc) {
        PC = pc;
    }

    public int getCC() {
        return CC;
    }

    public void setCC(int cc) {
        CC = cc;
    }

    public int getIR() {
        return IR;
    }

    public void setIR(int ir) {
        IR = ir;
    }

    public int getOpcode() {
        return opcode;
    }

    public void setOpcode(int op) {
        opcode = op;
    }

    public int getImmediate() {
        return immediate;
    }

    public void setImmediate(int im) {
        immediate = im;
    }

    public int getADDR() {
        return ADDR;
    }

    public void setADDR(int addr) {
        ADDR = addr;
    }

    public int getMSR() {
        return MSR;
    }

    public void setMSR(int msr) {
        MSR = msr;
    }

    public int getMTR() {
        return MTR;
    }

    public void setMTR(int mtr) {
        MTR = mtr;
    }

    public int getMFR() {
        return MFR;
    }

    public void setMFR(int mfr) {
        MFR = mfr;
    }

    public int getX0() {
        return X0;
    }

    public void setX0(int x0) {
        X0 = x0;
    }

    public int getRSR1() {
        return RSR1;
    }

    public void setRSR1(int rsr1) {
        RSR1 = rsr1;
    }

    public int getRSR2() {
        return RSR2;
    }

    public void setRSR2(int rsr2) {
        RSR2 = rsr2;
    }

    public int getARR() {
        return ARR;
    }

    public void setARR(int arr) {
        ARR = arr;
    }

    public int getLRR() {
        return LRR;
    }

    public void setLRR(int lrr) {
        LRR = lrr;
    }

    public int getSRR() {
        return SRR;
    }

    public void setSRR(int srr) {
        SRR = srr;
    }

    public int getGPRs(int rsr) {
        return GPRs[rsr];
    }

    public void setGPRs(int rsr, int value) {
        GPRs[rsr] = value;
    }

    public int getFRs(int rsr) {
        return FRs[rsr];
    }

    public void setFRs(int rsr, int value) {
        FRs[rsr] = value;
    }

    public boolean getIndexMode() {
        return indexMode;
    }

    public void setIndexMode(boolean im) {
        indexMode = im;
    }

    public boolean getIndirectMode() {
        return indirectMode;
    }
    
    public void setIndirectMode(boolean im) {
        indirectMode = im;
    }

}