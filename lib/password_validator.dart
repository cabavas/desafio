bool validatePassword(String password) {
  final regex =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=.*[a-zA-Z]).{7,}$');

  return regex.hasMatch(password);
}

String? getPasswordValidator(String? value) {
  if (value == null || value.isEmpty || validatePassword(value)) {
    return null;
  }
  return 'Invalid Password';
}
