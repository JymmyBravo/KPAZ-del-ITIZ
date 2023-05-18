/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package lapices;

import java.util.Scanner;
import javax.swing.JOptionPane;

/**
 *
 * @author mayaa
 */
public class Lapices {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int tope = 0;
        Scanner sc = new Scanner(System.in);

        int cont = 0;
        System.out.print("Selecciona el numero de lapices a ingresa: ");
        int lapices = sc.nextInt();

        int arr[] = new int[lapices];

        for (int i = 0; i < lapices; i++) {
            System.out.print("Ingresa el valor de lapiz " + (i + 1) + ": ");
            arr[i] = sc.nextInt();
        }

        System.out.print("Ingresa el numero  de lapiz a contar: ");
        int l = sc.nextInt();

        for (int i = 0; i < lapices; i++) {
            if (l == arr[i]) {
                cont++;
            }
        }

        System.out.println("Tienes " + cont + " lapices del numero:  " + l);
    }

}
