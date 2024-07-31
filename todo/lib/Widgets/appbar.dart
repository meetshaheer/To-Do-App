import 'package:flutter/material.dart';
import 'package:todo/main.dart';

class appbar extends StatefulWidget {
  const appbar({super.key});

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Google Keeps"),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 20,
          ),
          child: IconButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainApp(),
                  ),
                );
              });
            },
            icon: const Icon(
              Icons.bookmark_border,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
