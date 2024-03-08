import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({
    super.key,
    required this.validator,
    required this.hintText,
  });

  final String? Function(String? text) validator;
  final String hintText;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        // label: Text(
        //   'Email address',
        //   style: const TextStyle(
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
      ),
    );
  }
}
