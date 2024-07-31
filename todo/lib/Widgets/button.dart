import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final double width;
  final double height;
  final String title;
  final VoidCallback? onPressed; // Use VoidCallback for no parameters

  const ButtonWidget({
    super.key,
    required this.title,
    required this.width,
    required this.height,
    this.onPressed, // Make onPressed optional
  });

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
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
        onPressed: widget.onPressed, // Directly use the callback
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
