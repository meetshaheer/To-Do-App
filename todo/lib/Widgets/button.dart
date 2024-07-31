import 'dart:ui';

import 'package:flutter/material.dart';

class button extends StatefulWidget {
  final double width;
  final double height;
  final String title;
  final void Function()? onpressed;

  const button(
      {super.key,
      required this.title,
      required this.width,
      required this.height,
      this.onpressed});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color?>(
            Colors.amberAccent,
          ),
        ),
        onPressed: () {
          setState(() {
            widget.onpressed;
          });
          ;
        },
        child: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
