part of 'widgets.dart';

class SmsCodeValidation extends StatelessWidget {
  SmsCodeValidation({super.key, this.isRegister = false});
  final bool isRegister;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Spacer(),
          PinCodeTextField(
            appContext: context,
            length: 6,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              inactiveColor: Colors.grey,
              activeColor: Colors.blue,
            ),
            onChanged: (String value) {
              log(value);
              log('adssdasd');
            },
          ),
          const Spacer(),
          PrimaryButton(
            onPressed: (context) => context
                .read<AuthProvider>()
                .authSmsCode(context, isRegister: isRegister),
            text: 'Validar',
          ),
        ],
      ),
    );
  }
}
