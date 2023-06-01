import 'package:flutter_test/flutter_test.dart';

import 'package:test/password_validator.dart';

void main() {
  test('Valid Password', () {
    String password = 'Abc@123';
    bool result = validatePassword(password);
    expect(result, true);
  });

  test('Invalid Password - Too Short', () {
    String password = 'Abc123';
    bool result = validatePassword(password);
    expect(result, false);
  });

  test('Invalid Password - No Capitals', () {
    String password = 'abc@123';
    bool result = validatePassword(password);
    expect(result, false);
  });

  test('Invalid Password - No Lower Case', () {
    String password = 'ABC@123';
    bool result = validatePassword(password);
    expect(result, false);
  });

  test('Invalid Password - No Special Character', () {
    String password = 'Abcdefg';
    bool result = validatePassword(password);
    expect(result, false);
  });

  test('Valid Password - #forTe1', () {
    String password = '#forTe1';
    bool result = validatePassword(password);
    expect(result, true);
  });

  test('Valid Password - Voce@Consegue!2023', () {
    String password = 'Voce@Consegue!2023';
    bool result = validatePassword(password);
    expect(result, true);
  });

  test('Invalid Password - No Capital Letters', () {
    String password = 'senhafraca';
    bool result = validatePassword(password);
    expect(result, false);
  });

  test('Invalid Password - Not Enough Characters', () {
    String password = 'Qu@s1';
    bool result = validatePassword(password);
    expect(result, false);
  });
}
