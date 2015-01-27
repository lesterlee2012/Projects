/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package des_sim;

import java.util.Arrays;

/**
 * This class includes the core function of DES 
 * (Initialization, Keygen, Implementation)
 * Which means to output a string of binary according to the input
 * and E/D mode
 * Basic input includes the text (plain or cipher) and the 64 bit key
 * 
 * @author Lester
 */
public class DES {
    //field of instance
    private String inputText;
    //64 bit text array
    private int[] textBit;
    //32 bit L&R text array
    private int[] LHtext;
    private int[] RHtext;
    
    //56 bit input key
    private final String key;
    //56 bit key array
    private final int[] keyBit;
    //28 bit L&R half key array
    private int[] LHkey;
    private int[] RHkey;
    //48 bit round key array
    private final int[][] SubKey;
    
    //Encryption/Decryption mode flag
    private String mode;
    
    
    //default constructor
    public DES(String Key){        
        //64bit original key
        key=Key;
        
        //56 bit key array
        keyBit=new int[64]; 
        
        //28 bit L&R half key
        LHkey=new int[28];
        RHkey=new int[28];
        
        //48 bit round key
        SubKey=new int[16][48];
    }
    
    //set input text for everytime use
    public void setText(String Text){        
        inputText=Text;
        textBit=new int[64];
        for(int i=0;i<64;i++)
            textBit[i]=inputText.charAt(i)-48;    
        
        //32 bit L&R text array
        LHtext=new int[32];
        RHtext=new int[32];        
    }
    
    //Subkeys generation
    public void keygen(){
        //set value for keyBit
        for(int i=0;i<64;i++){            
            keyBit[i]=key.charAt(i)-48;
        }
        //PC1
        this.PC1();
        
        //LS and PC2
        for(int round=0;round<16;round++){
            this.LS(round);
            this.PC2(round);
        }
    }
    
    //set mode
    public void setEN(){
        mode="EN";
    }
    //set mode
    public void setDE(){
        mode="DE";
    }
    
    //get result
    public String getResult(){
        String result="";
        for(int i=0;i<64;i++){
            result+=textBit[i];
        }
        return result;
    }
    
    //Initial permutation
    private void IP(){
        int[] temp=Arrays.copyOf(textBit, textBit.length);
        for(int i=0;i<64;i++){
            textBit[i]=temp[DES_MX.IP[i]-1];
        }    
        
        //divide L&R half part
        for(int i=0;i<32;i++){
            LHtext[i]=textBit[i*2];
            RHtext[i]=textBit[i*2+1];
        }
    }
    
    //Key schedule: permuted choice (PC-1)
    private void PC1(){
        for(int i=0;i<28;i++){
            LHkey[i]=keyBit[DES_MX.PC1[i]-1];
            RHkey[i]=keyBit[DES_MX.PC1[i+28]-1];
        }            
    }
    
    //Key schedule: Left Rotating
    private void LS(int round){
        int[] temp1=Arrays.copyOf(LHkey, 28);
        int[] temp2=Arrays.copyOf(RHkey, 28);
        int shift=DES_MX.LS[round];
        for(int i=0;i<28;i++){
            if(i+shift<28){         
                LHkey[i]=temp1[i+shift];
                RHkey[i]=temp2[i+shift];
            }
            else{
                LHkey[i]=temp1[i+shift-28];
                RHkey[i]=temp2[i+shift-28];
            }                
        }              
    }
    
    //Key schedule: permuted choice (PC-2)
    private void PC2(int round){
        for(int i=0;i<48;i++){
            if(DES_MX.PC2[i]<29)
                SubKey[round][i]=LHkey[DES_MX.PC2[i]-1];
            else
                SubKey[round][i]=RHkey[DES_MX.PC2[i]-29];
        }        
    }
    
    //core of DES: Feistel Structure
    private void Feistel(int round){        
        int[] temp48=new int[48];
        int[] temp32=new int[32];
        //Expansion permutation and XOR with subkey
        for(int i=0;i<48;i++){
            //32 bits RH expansion to 48 bits
            temp48[i]=RHtext[DES_MX.EP[i]-1];
            //Xor with the 48 bit 
            if(mode.equals("EN"))
                //Encryption
                temp48[i]^=SubKey[round][i];
            else
                //Decryption
                temp48[i]^=SubKey[15-round][i];
        }
        
        //S-box 48 bits to 32 bits (as first 32 bits of temp48)
        for(int i=0;i<8;i++){
             int row=temp48[i*6]*2+temp48[i*6+5];
             int column=temp48[i*6]*8+temp48[i*6+1]*4+temp48[i*6+2]*2+temp48[i*6+3];
             int bit4=DES_MX.Sbox[row][column];
             //*************better to do a test
             for(int j=0;j<4;j++){             
                temp48[i*4+j]=TextBlock.Complement(Integer.toBinaryString(bit4),4).charAt(j)-48;   
             }
        }
        
        //rest steps (PF and Swap)
        for(int i=0;i<32;i++){
            //permutation function
            temp32[i]=temp48[DES_MX.PF[i]-1];
            
            //Xor with LF
            temp32[i]^=LHtext[i];
            
            //set LH,RH for next round
            LHtext[i]=RHtext[i];
            RHtext[i]=temp32[i];
        }
    }
    
    
    //32 bit Swap and Inverse Initial permutation
    private void SIIP(){
        //swap
        for(int i=0;i<32;i++){
            textBit[i*2]=RHtext[i];
            textBit[i*2+1]=LHtext[i];
        }
        //do IIP
        int[] temp=Arrays.copyOf(textBit, textBit.length);
        for(int i=0;i<64;i++){
            textBit[DES_MX.IP[i]-1]=temp[i];
        }    
    }
    
    //implementation of DES
    public void Implementation(){
        //Initial permutation
        this.IP();
        
            //for test
            String IPLH="",IPRH="";
            for(int i=0;i<32;i++){
                IPLH+=LHtext[i];
                IPRH+=RHtext[i];
            }
            
        //16 Rounds
        for(int round=0;round<16;round++){            
            this.Feistel(round);
            
            //for test
            String LH="",RH="";
            for(int i=0;i<32;i++){
                LH+=LHtext[i];
                RH+=RHtext[i];
            }
        }
        //32 bit Swap and Inverse IP
        this.SIIP();        
        
        //test
        String IIPLH="",IIPRH="";
        for(int i=0;i<32;i++){
            IIPLH+=LHtext[i];
            IIPRH+=RHtext[i];
        }
    }
}
