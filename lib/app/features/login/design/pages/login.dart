import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hackathon_github_app/app/features/login/design/states/states.dart';
import 'package:hackathon_github_app/app/features/login/design/widgets/widgets.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.isRegister});
  final bool isRegister;
  @override
  Widget build(BuildContext context) {
    log(isRegister.toString());
    final authProvider = context.watch<AuthProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text(isRegister ? 'Registrarse' : 'Iniciar sesión'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: PageView(
            controller: authProvider.pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              PhoneForm(isRegister: isRegister),
              SmsCodeValidation(isRegister: isRegister),
            ],
          ),
        ),
      ),
    );
  }
}
