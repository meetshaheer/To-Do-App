import 'package:flutter/material.dart';
import 'package:todo/Widgets/mainScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "TODO App",
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
