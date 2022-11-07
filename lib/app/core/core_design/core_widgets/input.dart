part of 'core_widgets.dart';

class Input extends StatefulWidget {
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
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        fillColor: Colors.grey[100],
        filled: true,
        labelText: widget.label,
        labelStyle: const TextStyle(color: Colors.grey),
        contentPadding: const EdgeInsets.all(15),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
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
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon == null
            ? null
            : Align(widthFactor: 1, heightFactor: 1, child: widget.prefixIcon),
      ),
      validator: (String? value) => widget.validator!(value),
      maxLines: widget.maxLines,
      obscureText: widget.obscureText!,
      onChanged: widget.onChanged,
    );
  }
}
