package Modelo;

public class Operacion {

    private double x1;
    private double x2;
    private double a;
    private double b;
    private double c;

    public Operacion(double a, double b, double c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public void cuadratica1() {

        double discriminante = b * b - 4 * a * c;

        if (discriminante < 0) {

            System.out.println("Que we vasayorrar");

        } else {

            double raiz = Math.sqrt(discriminante);

            x1 = (-b + raiz) / (2 * a);
        }

    }

    public void cuadratica2() {

        double discriminante = b * b - 4 * a * c;

        if (discriminante < 0) {

            System.out.println("Que we vasayorrar");

        } else {

            double raiz = Math.sqrt(discriminante);

            x2 = (-b - raiz) / (2 * a);
        }

    }

    public double getX1() {
        return x1;
    }

    public double getX2() {
        return x2;
    }

    public double getA() {
        return a;
    }

    public double getB() {
        return b;
    }

    public double getC() {
        return c;
    }

    public void setX1(double x1) {
        this.x1 = x1;
    }

    public void setX2(double x2) {
        this.x2 = x2;
    }

    public void setA(double a) {
        this.a = a;
    }

    public void setB(double b) {
        this.b = b;
    }

    public void setC(double c) {
        this.c = c;
    }

}
