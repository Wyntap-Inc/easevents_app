class Validator {
  static String? validateEmail({required String email}) {
    RegExp regEx = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

    if (email.isEmpty) {
      return 'Must Provide valid email';
    } else if (email == 'already-exists') {
      return 'User Already Exists';
    } else if (!regEx.hasMatch(email)) {
      return 'Invalid Email Format';
    }
    return null;
  }

  static String? validateName({required String name}) {
    RegExp regEx =
        RegExp(r"^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$");

    if (name.isEmpty) {
      return 'Must Provide Name';
    } else if (!regEx.hasMatch(name)) {
      return 'Invalid Name format';
    }
    return null;
  }

  static String? validatePhoneNumber({required String phoneNumber}) {
    RegExp regEx = RegExp(r"^(09|\+639)\d{9}$");
    if (phoneNumber.isEmpty) {
      return 'Must Provide Phone Number';
    } else if (!regEx.hasMatch(phoneNumber)) {
      return 'Invalid Phone Number Format';
    }
    return null;
  }

  static String? validatePassword({required String password}) {
    if (password.isEmpty) {
      return 'Password field is required';
    } else if (password.length < 8) {
      return 'Password must have 8 Characters';
    }
    return null;
  }

  static String? validateBirthday({required String bday}) {
    if (bday.isEmpty) {
      return 'Must Provide Birthdate';
    }
    return null;
  }
}
