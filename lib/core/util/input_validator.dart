class InputValidator {
  static const _passwordMaxLength = 30;

  static const _passwordMinLength = 4;

  static const _displayNameMaxLength = 30;

  static const _displayNameMinLength = 2;

  /// Function for email validation
  static bool validateEmail(String? email) {
    return email != null
        ? RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
          ).hasMatch(email)
        : throw Exception();
  }

  /// Password validation function
  static bool validatePassword(String? password) {
    if (password != null) {
      if (password.length < _passwordMinLength ||
          password.length > _passwordMaxLength) {
        return false;
      }

      return true;
    } else {
      throw Exception();
    }
  }

  /// Password validation function
  static bool validateDisplayName(String? displayName) {
    if (displayName != null) {
      if (displayName.length < _displayNameMinLength ||
          displayName.length > _displayNameMaxLength) {
        return false;
      }

      return true;
    } else {
      throw Exception();
    }
  }
}
