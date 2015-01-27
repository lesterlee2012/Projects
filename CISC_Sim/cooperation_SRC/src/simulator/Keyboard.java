/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package simulator;

/**
 * @author Lester
 */
public class Keyboard {
    public static int pointer;
    public static int length;
    //variables declaration
    private static int buffer[] = new int[80];
    private static int SR = 0;

    //default constructor
    public Keyboard() {

    }

    //get a char from buffer (as ASCII)
    public static int getChar() {
        return buffer[pointer];
    }

    //write a char into buffer (as ASCII)
    public static void writeChar(char Char) {
        buffer[pointer] = (int) Char;
    }

    //write character string into buffer
    public static void writeString(String string) {
        length = string.length();
        for (pointer = 0; pointer <= length - 1; pointer++) {
            writeChar(string.charAt(pointer));
        }
        pointer = 0;
    }

    //set keyboard status
    public static void setSR(int status) {
        SR = status;
    }

    //check keyboard status
    public static int checkSR() {
        return SR;
    }

    //clear the buffer
    public static void clear() {
        for (int i = 0; i < buffer.length; i++) buffer[i] = 0;
        length = 0;
        pointer = 0;
        SR = 0;
    }
}
