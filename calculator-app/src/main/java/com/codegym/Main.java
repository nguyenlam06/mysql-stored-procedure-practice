package com.codegym;

import java.security.NoSuchAlgorithmException;

public class Main {
    public static void main(String[] args) {
        System.out.println("=== K?t qu? g?i t? thu vi?n dóng gói (.jar) ===");
        System.out.println("T?ng 2 s? (5, 9): " + Calculator.sum(5, 9));
        System.out.println("Hi?u 2 s? (5, 9): " + Calculator.sub(5, 9));
        System.out.println("Tích 2 s? (5, 9): " + Calculator.mul(5, 9));
        
        try {
            System.out.println("Thuong 2 s? (10, 5): " + Calculator.divide(10, 5));
        } catch (NoSuchAlgorithmException e) {
            System.err.println("L?i thu?t toán: Không th? chia cho 0!");
            e.printStackTrace();
        }
    }
}
