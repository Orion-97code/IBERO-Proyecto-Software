class AuthService {
  bool authenticate(String email, String password) {
    return email == 'admin@demo.com' && password == '1234';
  }
}