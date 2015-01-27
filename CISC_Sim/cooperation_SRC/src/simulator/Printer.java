/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package simulator;

/**
 *
 * @author Lester
 */

public class Printer {
    //variables declaration
    private static int buffer[]=new int[80];
    public static String floatString="";
    public static int pointer;
    public static int length;
    private static int SR;
    
    //default constructor
    public Printer(){
    
    }
    
    //get buffer length
    private static int getLength(int[] a){
        int i=0;
        while(a[i]!=0){
            i++;
        }
        return i;
    }
    
    //write a char into buffer (as ASCII)
    public static void writeChar(int Char){
        buffer[pointer]=Char;
        pointer++;
    }
    
    //write character string into buffer
    public static String getline(){
        length=getLength(buffer);
        String string="";
        if(buffer[length-1]==10||buffer[length-1]==13){
            for(pointer=0;pointer<=length-1;pointer++){
            string+=String.valueOf((char)buffer[pointer]);
            }        
        }
        pointer=0;
        return string;
    }
    
    //new added by Lester
    public static String getString(){
        return floatString;
    }
    
    //set printer status
    public static void setSR(int status){
        SR=status;
    }
    //check printer status
    public static int checkSR(){
        return SR;
    }
    
    //clear the buffer
    public static void clear(){
        for(int i=0;i<80;i++)buffer[i]=0;
        length=0;
        pointer=0;
        SR=0;
    }
}
