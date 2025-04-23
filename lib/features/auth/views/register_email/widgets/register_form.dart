import 'package:flutter/material.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';
import 'package:harvest_app/shared/widgets/custom_text_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
          text: 'Nama Lengkap',
          placeHolder: 'Masukan Nama Lengkap',
        ),
        const CustomTextField(
          text: 'Email',
          placeHolder: 'Masukan Email',
        ),
        const CustomTextField(
          text: 'Password',
          placeHolder: 'Masukan Password',
          isPassword: true,
        ),
        const SizedBox(height: 16),
        ActionButton(text: 'Daftar', onTap: () {})
      ],
    );
  }
}
