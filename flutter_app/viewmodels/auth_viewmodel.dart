import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthService _authService = AuthService();
  String _userEmail = '';

  String get userEmail => _userEmail;

  void login(String email, String password) {
    final success = _authService.authenticate(email, password);
    if (success) {
      _userEmail = email;
      notifyListeners();
    } else {
      print('Login fallido');
    }
  }
}