/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package des_sim;
/**
 * Handle the input text and output as arrays of 64 bit block
 * and do padding
 * Use: create instance of TextBlock, then use method of makeblocks
 * @author Lester
 */
public class TextBlock {
    //field of instance
    //content of the text
    private final String content;
    //number of blocks
    private int blockNumber;
    //check of exact division (if 0 needs padding)
    private final int division;
    //blocks of this
    private String[] block;
       
    //default constructor
    public TextBlock(String Text){
        content=Text;
        //calculate the number of blocks
        blockNumber=content.length()/64;
        //set check of exact division
        if(blockNumber*64==Text.length())division=1;
        else {
            division=0;
            blockNumber++;
        }            
    }
    
    //"0" Complement for n bits
    public static String Complement(String binary,int n) {
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
    
    //Get content of the text
    private String getContent(){
        return this.content;
    }
    
    //Get number of blocks of the text
    public int getBlockNumber(){
        return this.blockNumber;     
    }
    
    //get check of division
    public int getDivision(){
        return this.division;
    }
    
    //get content of blocks
    public String getBlock(int i){
        return this.block[i];
    }
    
    //set content of blocks
    public void setBlock(int i,String string){
        this.block[i]=string;
    }
    
    //make arrays of blocks and do padding (ANSI X.923)
    public void makeBlocks(){
        int i=this.getBlockNumber();
        this.block=new String[i];
        for(int j=0;j<i;j++){
            if(j+1<this.getBlockNumber()){
                //for the most blocks
                block[j]=this.getContent().substring(j*64,j*64+64);                
            }
            else{
                //for the last block
                block[j]=this.getContent().substring(j*64);
                //padding ANSI X.923
                if(division==0){
                    int length=block[j].length();
                    int padding=64-length;
                    int count=padding/8;
                    //padding part (multiple "0" + count byte)
                    for(int k1=0;k1<padding-8;k1++)block[j]+="0";
                    block[j]+=Complement(Integer.toBinaryString(count),8);                    
                }
            }
        }
    }
    
     //make arrays of 8-bit blocks (for CFB-8 and OFB-8)
    public void make8Blocks(){
        blockNumber=content.length()/8;
        int i=blockNumber;
        block=new String[i];
        for(int j=0;j<i;j++){
            block[j]=this.getContent().substring(j*8,j*8+8);
        }
    }
}
