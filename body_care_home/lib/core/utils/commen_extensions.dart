import 'package:flutter/material.dart';

extension ExString on String {
  bool isValidPhoneNumer() {
    if (this.isEmpty) {
      return false;
    } else {
      String pattern = r'^(\+\d{1,3}[- ]?)?\d{10}$';
      final regex = RegExp(pattern);
      return regex.hasMatch(this);
    }
  }

  void showSnackBar(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(this)));
  }

  String validateEmail() {
    Pattern pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(this) || this == null)
      return "Please enter a valid email";
    return null;
  }

  bool isValidEmail() {
    Pattern pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(this) || this == null) return false;
    return true;
  }
}

extension intExtension on int {
  String timeFormatter() {
    String minutes = (this / 60).round().toString();
    String seconds = (this % 60).round().toString();
    if (seconds.length == 1) {
      seconds = "0$seconds";
    }
    if (minutes.length == 1) {
      minutes = "0$minutes";
    }

    return "$minutes:$seconds";
  }
}
