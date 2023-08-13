class EmailValidator {
  static String? validate(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);

    if (value.isEmpty) {
      return "Email es obligatorio";
    } else if (!regExp.hasMatch(value)) {
      return "Email inválido";
    }
    return null;
  }
}
