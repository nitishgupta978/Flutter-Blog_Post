import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? Function(String?)? validator;

  const InputField({
    Key? key,
    this.controller,
    this.hintText,
    this.labelText,
    this.suffixIcon,
    this.obscureText,
    this.validator,
    required TextInputType keyboardType,
    required InputDecoration decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      autovalidateMode: AutovalidateMode.disabled,
      controller: controller,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}