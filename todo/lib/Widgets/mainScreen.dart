import 'package:flutter/material.dart';
import 'package:todo/Widgets/dateandtime.dart';
import 'package:todo/Widgets/textfield.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({super.key});

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController notecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  // Top Date And Time Widget.
                  //
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: dateTime(),
                  ),
                  //
                  // Add Title Text Field
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    //

                    // Add Title Text Field
                    child: textfield(
                        hint_text: "Add Tile Here",
                        editcontroller: titlecontroller),
                  ),
                  //
                  //
                  // Add Note Text Field
                  //
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    //
                    //
                    // Add Note Texty Field
                    child: textfield(
                        hint_text: "Add Notes Here",
                        editcontroller: notecontroller),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    //
                    // Add Note Button Wrap with sized box for styling the button
                    child: SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color?>(
                            Colors.amberAccent,
                          ),
                        ),
                        onPressed: () {
                          setState(() {});
                        },
                        child: const Text(
                          "Add Note",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
