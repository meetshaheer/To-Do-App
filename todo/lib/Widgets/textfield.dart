import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController editController;

  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.editController,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          top: 30,
          bottom: 10,
          left: 30,
          right: 20,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      controller: widget.editController,
    );
  }
}
