package com.example.btl.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CartService {

    @Autowired
    private CartRepository cartRepository;

    public Cart getCartByUserId(Long userId) {
        return cartRepository.findByUserId(userId).orElseGet(() -> {
            // Tạo giỏ hàng mới nếu không tìm thấy
            Cart newCart = new Cart(userId, null);
            return cartRepository.save(newCart);
        });
    }

    public Cart addToCart(Long userId, Long productId) {
        Cart cart = getCartByUserId(userId);
        cart.getProductIds().add(productId);
        return cartRepository.save(cart);
    }

    public Cart removeFromCart(Long userId, Long productId) {
        Cart cart = getCartByUserId(userId);
        cart.getProductIds().remove(productId);
        return cartRepository.save(cart);
    }

    public void clearCart(Long userId) {
        Optional<Cart> cart = cartRepository.findByUserId(userId);
        cart.ifPresent(cartRepository::delete);
    }
}
