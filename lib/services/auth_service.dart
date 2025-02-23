import 'package:flutter/material.dart';

class AuthService {
  // Mock function for login
  Future<bool> login(String email, String password) async {
    // Simulate network request
    await Future.delayed(Duration(seconds: 2));
    if (email == 'thusha@gmail.com' && password == 'thusha') {
      return true; // Successful login
    }
    return false; // Login failed
  }

  // Mock function for sign up
  Future<bool> signUp(String email, String password) async {
    // Simulate network request
    await Future.delayed(Duration(seconds: 2));
    return true; // Successful sign up
  }

  // Mock logout
  Future<void> logout() async {
    // Simulate logout process
    await Future.delayed(Duration(seconds: 1));
  }
}
