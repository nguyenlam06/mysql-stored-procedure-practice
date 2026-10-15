package com.codegym;

public class QuadraticSolver {

    public static QuadraticResult solve(double a, double b, double c) {
        if (a == 0) {
            if (b == 0) {
                if (c == 0) {
                    return new QuadraticResult(QuadraticResult.Status.INFINITE_SOLUTIONS, null, null);
                } else {
                    return new QuadraticResult(QuadraticResult.Status.NO_REAL_ROOTS, null, null);
                }
            } else {
                double x = -c / b;
                return new QuadraticResult(QuadraticResult.Status.ONE_SOLUTION, x, null);
            }
        }

        double delta = b * b - 4 * a * c;
        if (delta < 0) {
            return new QuadraticResult(QuadraticResult.Status.NO_REAL_ROOTS, null, null);
        } else if (delta == 0) {
            double x = -b / (2 * a);
            return new QuadraticResult(QuadraticResult.Status.ONE_SOLUTION, x, null);
        } else {
            double x1 = (-b + Math.sqrt(delta)) / (2 * a);
            double x2 = (-b - Math.sqrt(delta)) / (2 * a);
            return new QuadraticResult(QuadraticResult.Status.TWO_SOLUTIONS, x1, x2);
        }
    }
}
