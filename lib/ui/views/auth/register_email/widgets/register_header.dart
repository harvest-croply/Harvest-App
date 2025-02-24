import 'package:flutter/material.dart';

class RegisterEmailHeader extends StatelessWidget {
  const RegisterEmailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Register",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
