// ignore_for_file: public_member_api_docs

/// Regular expressions, used throughout the app
class RegularExpressions {
  static final RegExp containsOnlyNewLinesPattern = RegExp(r'^\n*$');

  static final RegExp emailValidationPattern = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  static final RegExp passwordValidationPattern = RegExp(r'^.{4,}$');

  static final RegExp displayNameValidationPattern = RegExp(r'^.{4,}$');
}
