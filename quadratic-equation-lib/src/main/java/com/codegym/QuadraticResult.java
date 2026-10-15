package com.codegym;

public class QuadraticResult {
    public enum Status {
        INFINITE_SOLUTIONS, // Vô s? nghi?m
        NO_REAL_ROOTS,      // Vô nghi?m
        ONE_SOLUTION,        // Nghi?m duy nh?t / Nghi?m kép
        TWO_SOLUTIONS       // 2 nghi?m phân bi?t
    }

    private final Status status;
    private final Double x1;
    private final Double x2;

    public QuadraticResult(Status status, Double x1, Double x2) {
        this.status = status;
        this.x1 = x1;
        this.x2 = x2;
    }

    public Status getStatus() { return status; }
    public Double getX1() { return x1; }
    public Double getX2() { return x2; }

    @Override
    public String toString() {
        switch (status) {
            case INFINITE_SOLUTIONS:
                return "Phuong trình có vô s? nghi?m.";
            case NO_REAL_ROOTS:
                return "Phuong trình vô nghi?m.";
            case ONE_SOLUTION:
                return "Phuong trình có 1 nghi?m: x = " + x1;
            case TWO_SOLUTIONS:
                return "Phuong trình có 2 nghi?m phân bi?t: x1 = " + x1 + ", x2 = " + x2;
            default:
                return "";
        }
    }
}
