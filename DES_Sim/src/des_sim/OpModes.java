/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package des_sim;

/**
 * This class includes the 6 modes of operation (including one test mode)
 * Which is based on the implementation of DES class
 * 
 * @author Lester
 */
public class OpModes {
    //field of instance
    private String text;
    private String key;
    private String iv;
    private String mode;
    private String output;
    
    //constructor
    public OpModes(String text, String key, String iv){
        this.key =key;
        this.text=text;
        this.iv=iv;
        this.output="";
    }

    //set mode
    public void setEN(){
        mode="EN";
    }
    //set mode
    public void setDE(){
        mode="DE";
    }
    
    //get output
    public String getOutput(){
        //De-padding
        if(mode.equals("DE")){
            String last=output.substring(output.length()-64);
            int number=Integer.parseInt(last.substring(60),2);
            if(number>8)return output;
            for(int i=0;i<8*number-4;i++){
                if(last.substring(64-8*number+i,64-8*number+i+1).equals("1"))return output;
            }
            return output.substring(0,output.length()-8*number);
        }
        else
            return output;
    }
    
    //get output for no padding
    public String getoutput(){
        return output;
    }
    
    //two n-bit String XOR and output n-bit String
    private String XOR(String a, String b, int n){
        String string="";
        for(int i=0;i<n;i++)
            string+=Integer.parseInt(a.substring(i, i+1))^Integer.parseInt(b.substring(i, i+1));
        return string;
    }
    
    
    //DES test implementation (only for test the first block encryption/decryption)
    public void DES(){
        //create an instance of DES class and key schedule
        DES des=new DES(key);
        des.keygen();
        if(text.length()>63)
        des.setText(text.substring(0, 64));
        else{
            //padding for just 1 block
            TextBlock block=new TextBlock(this.text);
            block.makeBlocks();
            des.setText(block.getBlock(0));
        }
        //set mode E/D
        if(mode.equals("EN"))
            des.setEN();
        else
            des.setDE();
        //implementation
        des.Implementation();
        //push the result to var output
        output+=des.getResult();
    }
    
    //ECB implementation
    public void ECB(){
        //create DES instance and do key schedule
        DES des=new DES(key);
        des.keygen();
        //encryption or decryption
        if(mode.equals("EN"))des.setEN();
        else des.setDE();
        //create block instance, make blocks and do padding
        TextBlock block=new TextBlock(this.text);
        block.makeBlocks();
        //handle arrays of blocks
        for(int i=0;i<block.getBlockNumber();i++){
            //input text for DES
            des.setText(block.getBlock(i));            
            //implementation
            des.Implementation();
            output+=des.getResult();
        }
        
    }
    
    //CBC implementation
    public void CBC(){
        //create DES instance and do key schedule
        DES des=new DES(key);
        des.keygen();
        //encryption or decryption
        if(mode.equals("EN"))des.setEN();
        else des.setDE();
        //create block instance, make blocks and do padding
        TextBlock block=new TextBlock(this.text);
        block.makeBlocks();
        //handle arrays of blocks
        for(int i=0;i<block.getBlockNumber();i++){            
            //encryption
            if(mode.equals("EN")){
                //input text for DES
                des.setText(XOR(block.getBlock(i),iv,64));
                //implementation
                des.Implementation();
                output+=des.getResult();      
                iv=des.getResult();
            }
            //decryption
            else{
                //input text for DES
                des.setText(block.getBlock(i));
                //implementation
                des.Implementation();
                output+=XOR(iv,des.getResult(),64); 
                iv=block.getBlock(i);                      
            }
        }
    }
    
    //CFB implementation
    public void CFB(){
        //create DES instance and do key schedule
        DES des=new DES(key);
        des.keygen();
        //encryption or decryption
        des.setEN();
        //create block instance, make blocks and do padding
        TextBlock block=new TextBlock(this.text);
        block.make8Blocks();
        //handle arrays of blocks
        for(int i=0;i<block.getBlockNumber();i++){            
            //encryption
            if(mode.equals("EN")){
                //input text for DES
                des.setText(iv);
                //implementation
                des.Implementation();
                String temp=XOR(des.getResult().substring(0, 8),block.getBlock(i),8);  
                iv=iv.substring(8)+temp;
                output+=temp;
            }
            //decryption
            else{
                //input text for DES
                des.setText(iv);
                //implementation
                des.Implementation();
                output+=XOR(des.getResult().substring(0, 8),block.getBlock(i),8);  
                iv=iv.substring(8)+block.getBlock(i);                
            }
        }
        
    }
    
    //ECB implementation
    public void OFB(){
        //create DES instance and do key schedule
        DES des=new DES(key);
        des.keygen();
        //encryption or decryption
        des.setEN();
        //create block instance, make blocks and do padding
        TextBlock block=new TextBlock(this.text);
        block.make8Blocks();
        //handle arrays of blocks
        for(int i=0;i<block.getBlockNumber();i++){    
            //encryption and decryption the same procedure            
            //input text for DES
            des.setText(iv);
            //implementation
            des.Implementation();
            output+=XOR(des.getResult().substring(0, 8),block.getBlock(i),8);  
            iv=iv.substring(8)+des.getResult().substring(0, 8);          
        }
    }
    
    //ECB implementation
    public void CNT(){
        //create DES instance and do key schedule
        DES des=new DES(key);
        des.keygen();
        //encryption or decryption
        des.setEN();
        //create block instance, make blocks and do padding
        TextBlock block=new TextBlock(this.text);
        block.makeBlocks();
        //handle arrays of blocks
        for(int i=0;i<block.getBlockNumber();i++){    
            //encryption and decryption the same procedure            
            //input text for DES
            des.setText(iv);
            //implementation
            des.Implementation();
            output+=XOR(des.getResult(),block.getBlock(i),64);  
            iv=TextBlock.Complement(Long.toBinaryString(Long.parseLong(iv, 2)+1),64);          
        }
    }
}
