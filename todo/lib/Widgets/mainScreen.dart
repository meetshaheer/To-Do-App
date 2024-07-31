import 'package:flutter/material.dart';
import 'package:todo/Widgets/List.dart';
import 'package:todo/Widgets/appbar.dart';
import 'package:todo/Widgets/button.dart';
import 'package:todo/Widgets/dateandtime.dart';
import 'package:todo/Widgets/listscreen.dart';
import 'package:todo/Widgets/textfield.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  List<List<String>> notes = [
    ["Ali", "Ahmed"]
  ];

  addItem() {
    String title = titleController.text;
    String note = noteController.text;
    if (title.isNotEmpty && note.isNotEmpty) {
      List mylist = list().notes;
      setState(() {
        mylist.add([title, note]);
      });
      titleController.clear();
      noteController.clear();
      print(mylist);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                      builder: (context) => listviewScreen(),
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
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: dateTime(), // Ensure correct class name
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    child: TextFieldWidget(
                      hintText: "Add Title Here",
                      editController: titleController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    child: TextFieldWidget(
                      hintText: "Add Notes Here",
                      editController: noteController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    child: ButtonWidget(
                      title: "Add Notes",
                      width: double.infinity,
                      height: 60,
                      onPressed: addItem, // Pass function reference correctly
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
