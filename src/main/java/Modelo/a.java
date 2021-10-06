package Modelo;

import java.util.Scanner;

public class a {

    public static void main(String[] args) {

        Scanner s = new Scanner(System.in);

        double x1;
        double x2;
        
        System.out.println("Ingrese un valor para a: ");
        double a = Double.parseDouble(s.nextLine());
        
        System.out.println("Ingrese un valor para b: ");
        double b = Double.parseDouble(s.nextLine());
        
        System.out.println("Ingrese un valor para c: ");
        double c = Double.parseDouble(s.nextLine());

        double discriminante = b * b - 4 * a * c;

        if (discriminante <0) {

            System.out.println("Que we vasayorrar");

        } else {
            
            double raiz = Math.sqrt(discriminante);

            x1 = (-b + raiz) / (2 * a);
            System.out.println("Cuadratica positiva: " + x1);

        }
        System.out.println("-------------------------------");
        //Para Negativos
        if (discriminante < 0) {

            System.out.println("Que we vasayorrar");

        } else {
            
            double raiz = Math.sqrt(discriminante);

            x2 = (-b - raiz) / (2 * a);
            System.out.println("Cuadratica negativa: " + x2);

        }
       

    }
}
