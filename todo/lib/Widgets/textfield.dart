import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  final String hint_text;
  final TextEditingController editcontroller;

  const textfield(
      {super.key, required this.hint_text, required this.editcontroller});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
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
        hintText: widget.hint_text,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      controller: widget.editcontroller,
    );
  }
}
