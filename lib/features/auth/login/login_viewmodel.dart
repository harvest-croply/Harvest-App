import 'package:flutter/material.dart';
import 'package:harvest_app/shared/widgets/custom_snack_bar.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool validate(BuildContext context) {
    if (emailController.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        customDangerSnackBar('Email harus diisi!'),
      );
      return false;
    } else if (passwordController.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        customDangerSnackBar('Password harus diisi!'),
      );
      return false;
    }
    return true;
  }

  login(BuildContext context) {
    if (validate(context)) {
      print('login');
    }
  }
}
