import 'package:flutter/material.dart';
import 'package:hackathon_github_app/app/core/core_design/core_widgets/core_widgets.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Input(
                        label: 'Nombre',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Input(
                        label: 'Teléfono',
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                    const SizedBox(height: 10),
                    PrimaryButton(
                      onPressed: (context) {},
                      text: 'Iniciar sesión',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
