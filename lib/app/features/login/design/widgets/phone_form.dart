part of 'widgets.dart';

class PhoneForm extends StatelessWidget {
  PhoneForm({super.key, this.isRegister = false});
  final bool isRegister;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          if (isRegister)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Input(
                label: 'Nombre',
                controller: context.watch<AuthProvider>().nameController,
                prefixIcon: const Icon(Icons.person),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo vació';
                  }
                  return null;
                },
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Input(
              label: 'Teléfono',
              controller: context.watch<AuthProvider>().phoneController,
              prefixIcon: const Icon(Icons.phone),
              keyboardType: TextInputType.phone,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Campo vació';
                }
                return null;
              },
            ),
          ),
          const Spacer(),
          PrimaryButton(
            onPressed: (context) {
              if (!_formKey.currentState!.validate()) return;
              isRegister
                  ? context.read<AuthProvider>().authPhoneNumber()
                  : context.read<AuthProvider>().register();
            },
            text: isRegister ? 'Registrarse' : 'Siguiente',
          ),
        ],
      ),
    );
  }
}
