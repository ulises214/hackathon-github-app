import 'package:flutter/material.dart';
import 'package:hackathon_github_app/app/features/login/design/states/states.dart';
import 'package:hackathon_github_app/app/features/login/design/widgets/widgets.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = context.watch<AuthProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar sesión'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: PageView(
            controller: authProvider.pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              PhoneForm(),
              SmsCodeValidation(),
            ],
          ),
        ),
      ),
    );
  }
}
