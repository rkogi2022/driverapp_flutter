bool validateEmail(String email) {
  final RegExp regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  return regex.hasMatch(email);
}

bool validatePassword(String password) {
  return password.length >= 6;
}
