part of 'core_widgets.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    this.maxLines = 1,
    this.hintText,
    required this.label,
    this.validator,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
  });
  final int? maxLines;
  final String? hintText;
  final String label;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.grey[100],
        filled: true,
        labelText: label,
        labelStyle: const TextStyle(color: Colors.blue),
        contentPadding: const EdgeInsets.all(15),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(5),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon == null
            ? null
            : Align(widthFactor: 1, heightFactor: 1, child: prefixIcon),
      ),
      validator: (String? value) => validator!(value),
      maxLines: maxLines,
      obscureText: obscureText!,
      onChanged: onChanged,
    );
  }
}
