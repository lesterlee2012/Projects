/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package simulator;

/**
 * @author Lester
 */

public class Updater implements Runnable {
    SimulatorGUI GUI;

    public Updater(SimulatorGUI GUI) {
        this.GUI = GUI;
    }

    public void run() {
        while (true) {
            try {
                if (Processor.executed == 1) {
                    GUI.display();
                    Processor.executed = 0;
                    //System.out.println("executed");
                }
                Thread.sleep(1);
            } catch (InterruptedException e) {

            }
        }
    }
}
