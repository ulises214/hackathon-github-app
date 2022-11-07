part of 'widgets.dart';

class PhoneForm extends StatelessWidget {
  PhoneForm({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Input(
              label: 'Teléfono',
              controller: context.watch<AuthProvider>().phoneController,
              prefixIcon: const Icon(Icons.phone),
              keyboardType: TextInputType.phone,
              validator: (String? value) =>
                  context.watch<AuthProvider>().validateField(value),
            ),
          ),
          const Spacer(),
          PrimaryButton(
            onPressed: (context) =>
                context.read<AuthProvider>().authPhoneNumber(),
            text: 'Enviar',
          ),
        ],
      ),
    );
  }
}
