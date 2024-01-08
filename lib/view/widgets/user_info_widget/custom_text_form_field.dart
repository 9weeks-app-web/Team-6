import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final bool obscureText;
  final String? hintText;
  final TextEditingController? controller;
  final bool borderError;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.controller,
    this.borderError = true,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  // @override
  // void dispose() {
  //   widget.controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: widget.borderError ? Colors.grey : Colors.red,
        width: 1,
      ),
    );
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        enabledBorder: baseBorder,
        focusedBorder: baseBorder.copyWith(),
      ),
    );
  }
}