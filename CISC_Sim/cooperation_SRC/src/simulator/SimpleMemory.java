/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package simulator;

import java.util.Random;

/**
 * @author Lester
 * @changed by ivanlw
 */


public class SimpleMemory {
    /*
     Cache implementation:
     1.Unified Caches
     
     reason: balance the load between data fetch and
     instruction load
     
     2.Write back: to reduce I/O, so that we don't need a write buffer,
     but need to set a dirty bit,
     write data only to the cache; update lower level when a block
     falls out of the cache (dirty bit = 1)
     
     //No No No, write through temporarily, easy to implement.
     //change to write through
     
     reason: Although write through is an inefficient strategy, most L1s and some lower level caches follow this so that read hit time is not affected due to complicated logic to update dirty bit
     
     3.Organization: Full-associative
     get highest hit rate
     
     4.Replacement strategy: RANDOM
     
     reason: efficiency is close to LRU, surprisingly high
     
     */

    //Instance fields for class SimpleMemory
    
    /*Think of memory as 2kbytes (1kwords) including 2 banks of 1024 memory units.
     Which makes the memory both byte and word addressable.*/

    //private int
    private int[] cache;
    private int[][] data = new int[2][1024];
    //for checking whether the address is hit(already in cache) or not
    //use ArrayList because we need to update it anytime
    private int[] catelog;

    /* forgot these figure, just previous thought
     
     1 2
     --|--
     | | |
     | | |
     | | |
     | | |
     | | |
     | | |
     | | |
     | | |
     --|--
     
     */
    //Including two registers, MAR and MDR.
    private int MAR;
    private int MDR;
    //increment cycle counter by 1 per CPU cycle.
    private int cycle;

    //Constructor for class SimpleMemory; Other constructors will be placed here if needed.
    public SimpleMemory() {
        cycle = 0;
        MDR = 0;
        MAR = 0;
        cache = new int[8]; //from 0-7
        catelog = new int[8]; //first column: corresponding position in Memory;
    }

    //just for test
    public static void main(String[] args) {
        //System.out.println("asdf");
        SimpleMemory sm = new SimpleMemory();
        sm.MAR = 2;
        sm.MDR = 7;
        sm.writeWord();
        System.out.println("Writing MAR 2 with data 7...");
        for (int i = 0; i < 8; i++) {
            System.out.print(sm.cache[i]);
        }
        System.out.println();
        sm.MAR = 3;
        sm.MDR = 4;
        sm.writeWord();
        System.out.println("Writing MAR 3 with data 4...");
        for (int i = 0; i < 8; i++) {
            System.out.print(sm.cache[i]);
        }
        System.out.println();

        sm.MAR = 2;
        sm.fetchWord();
        System.out.println("Fetching MAR 2...");
        for (int i = 0; i < 8; i++) {
            System.out.print(sm.cache[i]);
        }
        System.out.println();

        sm.MAR = 3;
        sm.fetchWord();
        System.out.println("Fetching MAR 3...");
        for (int i = 0; i < 8; i++) {
            System.out.print(sm.cache[i]);
        }
        System.out.println();

        sm.MAR = 3;
        sm.fetchWord();
        System.out.println("Fetching MAR 3 again (from Cache)...");
        for (int i = 0; i < 8; i++) {
            System.out.print(sm.cache[i]);
        }
        System.out.println();

        sm.MAR = 3;
        sm.MDR = 5;
        sm.writeWord();
        System.out.println("Writing MAR 3 with data 5...");
        for (int i = 0; i < 8; i++) {
            System.out.print(sm.cache[i]);
        }
        System.out.println();

        sm.MAR = 3;
        sm.fetchWord();
        System.out.println("Fetching MAR 3...");
        for (int i = 0; i < 8; i++) {
            System.out.print(sm.cache[i]);
        }
        System.out.println();
    }

    //Initialize memory
    public void clear() {
        for (int i = 0; i < 2; i++)
            for (int j = 0; j < 1024; j++) data[i][j] = 0;
    }

    public int getMAR() {
        return MAR;
    }

    //Basic Methods for class SimpleMemory
    public void setMAR(int address) {
        MAR = address;
    }

    public int getMDR() {
        return MDR;
    }

    public void setMDR(int data) {
        MDR = data;
    }

    //add by Lester
    public void setMemoryValue(int addr, int value) {
        int bankid = addr % 2;
        data[bankid][addr / 2] = value;
    }
    //Methods used to fetch/write memory data by registers

    public int getMemoryValue(int addr) {
        int bankid = addr % 2;
        return data[bankid][addr / 2];
    }

    /*
     * usage: 1.setMAR() 2.invode fetchWord() 3.the content is in MDR
     * return 1 if succeed, return 0 if fail
     *
     */
    public boolean fetchWord() {
        if (MAR == 0 || MAR == 1 || MAR > 2048)
            return false;//false, reserved address

        //check if it's in cache
        for (int i = 0; i < 8; i++) {
            if (catelog[i] == MAR) {// && catelog[i][1] == 1
                //yes, read directly:
                MDR = cache[i];
                cycle++;
                return true;
            }
        }
        //since I use RAMDOM strategy, so I just need to cover previous content
        //fetch content in Memory to MDR
        int bankid = MAR % 2;
        MDR = data[bankid][MAR / 2];
        cycle++;

        //save content to CACHE, randomly
        Random random = new Random();
        int ranNum = random.nextInt(8);
        cache[ranNum] = MDR;
        //update info in catelog, if
        catelog[ranNum] = MAR;
        //catelog[ranNum][1] = 1;

        return true;//true
    }

    /*
     * usage: 1.setMAR() 2.setMDR() 3.invoke writeWord()
     * return 1 if succeed, return 0 if fail
     *
     */
    public boolean writeWord() {
        if (MAR == 0 || MAR == 1 || MAR > 2048)
            return false;//false, reserved address

        //if data exists in the cache, write cache
        //boolean ifWriteCache = false;
        for (int i = 0; i < 8; i++) {
            if (catelog[i] == MAR) {
                cache[i] = MDR;
                //ifWriteCache = true;
            }
        }

        //whether or not data exists in cache, we always need to write it into memory
        setMemoryValue(MAR, MDR);
        cycle++;
        return true;
    }

}
