/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package simulator;

/**
 * @author Lester
 */
public class Assembler {
    //variables declaration
    //Opcode
    private static String Opcode;
    //I bit
    private static String I;
    //IX bit
    private static String x;
    //register bit
    private static String r;
    //condition code
    private static String cc;
    //register x bit
    private static String rx;
    //register y bit
    private static String ry;
    //Address
    private static String addr;
    //Immediate value
    private static String immed;
    //L/R bit
    private static String LR;
    //A/L bit
    private static String AL;
    //Count
    private static String count;
    //Device ID
    private static String devid;
    //floating point registers
    private static String fr;
    //Fixed/Floating Point
    private static String F;
    //Assembled result
    private static String MC;

    //"0" Complement for n bits
    private static String Complement(String binary, int n) {
        int complement = n - binary.length();
        int k;
        if (complement == 0) {
            return binary;
        } else {
            for (k = 1; k <= complement; k++) {
                binary = "0" + binary;
            }
            return binary;
        }
    }

    //Convert assembly language sentence into binary code (machine code)
    public static String toMC(String instr) {
        //if readline is not blank
        if (!instr.equals("")) {
            //and not an annotation
            if (!instr.substring(0, 2).equals("//")) {
                //split into two parts
                String[] a = instr.split(" ");
                //split second half
                String[] b = a[1].split(",");

                //assembel the code into MC

                //Load/Store Instructions
                // 001 LDR
                if (a[0].equals("LDR")) {
                    Opcode = "000001";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + r + addr;
                    return MC;
                }
                // 002 STR
                else if (a[0].equals("STR")) {
                    Opcode = "000010";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + r + addr;
                    return MC;
                }

                // 003 LDA
                else if (a[0].equals("LDA")) {
                    Opcode = "000011";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + r + addr;
                    return MC;
                }

                // 041 LDX
                else if (a[0].equals("LDX")) {
                    Opcode = "100001";
                    r = "00";
                    x = b[0];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 6);
                    //Indirect is not set
                    if (b.length == 2) I = "0";
                        //Indirect is set
                    else I = b[2];
                    MC = Opcode + I + x + r + addr;
                    return MC;
                }

                // 042 STX
                else if (a[0].equals("STX")) {
                    Opcode = "100010";
                    r = "00";
                    x = b[0];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 6);
                    //Indirect is not set
                    if (b.length == 2) I = "0";
                        //Indirect is set
                    else I = b[2];
                    MC = Opcode + I + x + r + addr;
                    return MC;
                }

                //Transfer Instructions
                // 010 JZ
                else if (a[0].equals("JZ")) {
                    Opcode = "001000";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + r + addr;
                    return MC;
                }

                // 011 JNE
                else if (a[0].equals("JNE")) {
                    Opcode = "001001";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + r + addr;
                    return MC;
                }

                // 012 JCC
                else if (a[0].equals("JCC")) {
                    Opcode = "001010";
                    cc = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + cc + addr;
                    return MC;
                }

                // 013 JMP
                else if (a[0].equals("JMP")) {
                    Opcode = "001011";
                    r = "00";
                    x = b[0];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 6);
                    //Indirect is not set
                    if (b.length == 2) I = "0";
                        //Indirect is set
                    else I = b[2];
                    MC = Opcode + I + x + r + addr;
                    return MC;
                }

                // 014 JSR
                else if (a[0].equals("JSR")) {
                    Opcode = "001100";
                    r = "00";
                    x = b[0];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 6);
                    //Indirect is not set
                    if (b.length == 2) I = "0";
                        //Indirect is set
                    else I = b[2];
                    MC = Opcode + I + x + r + addr;
                    return MC;
                }

                // 015 RFS
                else if (a[0].equals("RFS")) {
                    Opcode = "001101";
                    r = "00";
                    x = "0";
                    immed = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 6);
                    I = "0";
                    MC = Opcode + I + x + r + immed;
                    return MC;
                }

                // 016 SOB
                else if (a[0].equals("SOB")) {
                    Opcode = "001110";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + r + addr;
                    return MC;
                }

                // 017 JGE
                else if (a[0].equals("JGE")) {
                    Opcode = "001111";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + r + addr;
                    return MC;
                }

                //Arithmetic and Logical Instructions
                // 004 AMR
                else if (a[0].equals("AMR")) {
                    Opcode = "000100";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + r + addr;
                    return MC;
                }

                // 005 SMR
                else if (a[0].equals("SMR")) {
                    Opcode = "000101";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + r + addr;
                    return MC;
                }

                // 006 AIR
                else if (a[0].equals("AIR")) {
                    Opcode = "000110";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = "0";
                    immed = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 6);
                    I = "0";
                    MC = Opcode + I + x + r + immed;
                    return MC;
                }

                // 007 SIR
                else if (a[0].equals("SIR")) {
                    Opcode = "000111";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = "0";
                    immed = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 6);
                    I = "0";
                    MC = Opcode + I + x + r + immed;
                    return MC;
                }

                // 020 MUL
                else if (a[0].equals("MUL")) {
                    Opcode = "010000";
                    rx = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    ry = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 2);
                    String pad = "000000";
                    MC = Opcode + rx + ry + pad;
                    return MC;
                }

                // 021 DIV
                else if (a[0].equals("DIV")) {
                    Opcode = "010001";
                    rx = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    ry = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 2);
                    String pad = "000000";
                    MC = Opcode + rx + ry + pad;
                    return MC;
                }

                // 022 TER
                else if (a[0].equals("TER")) {
                    Opcode = "010010";
                    rx = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    ry = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 2);
                    String pad = "000000";
                    MC = Opcode + rx + ry + pad;
                    return MC;
                }

                // 023 AND
                else if (a[0].equals("AND")) {
                    Opcode = "010011";
                    rx = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    ry = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 2);
                    String pad = "000000";
                    MC = Opcode + rx + ry + pad;
                    return MC;
                }

                // 024 ORR
                else if (a[0].equals("ORR")) {
                    Opcode = "010100";
                    rx = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    ry = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 2);
                    String pad = "000000";
                    MC = Opcode + rx + ry + pad;
                    return MC;
                }

                // 025 NOT
                else if (a[0].equals("NOT")) {
                    Opcode = "010101";
                    rx = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    ry = "00";
                    String pad = "000000";
                    MC = Opcode + rx + ry + pad;
                    return MC;
                }

                //Shift/Rotate Operations
                // 031 SRC
                else if (a[0].equals("SRC")) {
                    Opcode = "011001";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    count = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 4);
                    LR = b[2];
                    AL = b[3];
                    String pad = "00";
                    MC = Opcode + LR + r + AL + pad + count;
                    return MC;
                }

                // 032 RRC
                else if (a[0].equals("RRC")) {
                    Opcode = "011010";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    count = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 4);
                    LR = b[2];
                    AL = b[3];
                    String pad = "00";
                    MC = Opcode + LR + r + AL + pad + count;
                    return MC;
                }

                //I/O Operations
                // 061 IN
                else if (a[0].equals("IN")) {
                    Opcode = "110001";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    devid = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 5);
                    String pad1 = "0";
                    String pad2 = "00";
                    MC = Opcode + pad1 + r + pad2 + devid;
                    return MC;
                }

                // 062 OUT
                else if (a[0].equals("OUT")) {
                    Opcode = "110010";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    devid = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 5);
                    String pad1 = "0";
                    String pad2 = "00";
                    MC = Opcode + pad1 + r + pad2 + devid;
                    return MC;
                }

                // 063 CHK
                else if (a[0].equals("CHK")) {
                    Opcode = "110011";
                    r = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    devid = Complement(Integer.toBinaryString(Integer.parseInt(b[1])), 5);
                    String pad1 = "0";
                    String pad2 = "00";
                    MC = Opcode + pad1 + r + pad2 + devid;
                    return MC;
                }

                //Floatin Point Instructions/Vector Operations
                // 043 LDFR
                if (a[0].equals("LDFR")) {
                    Opcode = "100011";
                    fr = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + fr + addr;
                    return MC;
                }
                // 044 STFR
                else if (a[0].equals("STFR")) {
                    Opcode = "100100";
                    fr = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + fr + addr;
                    return MC;
                }

                // 033 FADD
                if (a[0].equals("FADD")) {
                    Opcode = "011011";
                    fr = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + fr + addr;
                    return MC;
                }

                // 034 FSUB
                if (a[0].equals("FSUB")) {
                    Opcode = "011100";
                    fr = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + fr + addr;
                    return MC;
                }

                // 035 VADD
                if (a[0].equals("VADD")) {
                    Opcode = "011101";
                    fr = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + fr + addr;
                    return MC;
                }

                // 036 VSUB
                if (a[0].equals("VSUB")) {
                    Opcode = "011110";
                    fr = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + fr + addr;
                    return MC;
                }

                // 037 CNVRT
                if (a[0].equals("CNVRT")) {
                    Opcode = "011111";
                    F = Complement(Integer.toBinaryString(Integer.parseInt(b[0])), 2);
                    x = b[1];
                    addr = Complement(Integer.toBinaryString(Integer.parseInt(b[2])), 6);
                    //Indirect is not set
                    if (b.length == 3) I = "0";
                        //Indirect is set
                    else I = b[3];
                    MC = Opcode + I + x + F + addr;
                    return MC;
                }
            }
            return "";
        }
        return "";
    }
}
