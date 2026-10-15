package com.codegym.service;

import com.codegym.model.Product;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products = new HashMap<>();

    static {
        products.put(1, new Product(1, "iPhone 15 Pro", 999.0, "Flagship smartphone", "Apple"));
        products.put(2, new Product(2, "Galaxy S24 Ultra", 1199.0, "AI Powered smartphone", "Samsung"));
        products.put(3, new Product(3, "MacBook Pro M3", 1599.0, "High performance laptop", "Apple"));
        products.put(4, new Product(4, "XPS 15", 1399.0, "Premium Windows laptop", "Dell"));
        products.put(5, new Product(5, "Sony WH-1000XM5", 399.0, "Noise cancelling headphones", "Sony"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> result = new ArrayList<>();
        if (name != null && !name.trim().isEmpty()) {
            String keyword = name.trim().toLowerCase();
            for (Product p : products.values()) {
                if (p.getName().toLowerCase().contains(keyword)) {
                    result.add(p);
                }
            }
        } else {
            result = findAll();
        }
        return result;
    }
}
