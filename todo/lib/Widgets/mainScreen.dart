import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/Widgets/button.dart';
import 'package:todo/Widgets/dateandtime.dart';
import 'package:todo/Widgets/itemTime.dart';
import 'package:todo/Widgets/textfield.dart';
import 'package:todo/main.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController titleAddController = TextEditingController();
  TextEditingController noteAddController = TextEditingController();

  ///

  TextEditingController titleEditController = TextEditingController();
  TextEditingController noteEditController = TextEditingController();

  List<List<String>> notes = [
    ["Grocery Shopping", "Buy milk, eggs, and bread."],
    ["Complete Homework", "Finish  review history notes."],
    ["Call Mom", "Check in and see how she is doing."],
    ["Meeting with Boss", "Discuss the project deadlines"],
    ["Workout", "Attend the 6 PM yoga class at the gym."],
    ["Doctor Appointment", "Annual check-up at 10 AM."],
  ];

  addItem() {
    String title = titleAddController.text;
    String note = noteAddController.text;
    if (title.isNotEmpty && note.isNotEmpty) {
      setState(() {
        notes.insert(0, [title, note]);
      });
      titleAddController.clear();
      noteAddController.clear();
      print(notes);
    }
  }

  editItem({myindex}) {
    return AlertDialog(
      title: const Text("Update Value"),
      actions: [
        TextFieldWidget(
            hintText: "Please Enter The Title",
            editController: titleEditController),
        SizedBox(
          height: 20,
        ),
        //
        TextFieldWidget(
            hintText: "Please Enter The Note",
            editController: noteEditController),
        const SizedBox(
          height: 30,
        ),
        ButtonWidget(
          title: "Update Value",
          width: double.infinity,
          height: 60,
          onPressed: () {
            setState(() {
              notes[myindex][0] = titleEditController.text;
              //
              notes[myindex][1] = noteEditController.text;

              //
              Navigator.pop(context);
            });
          },
        )
      ],
    );
  }

  removeItem({myindex}) {
    setState(() {
      notes.removeAt(myindex);
    });
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
                  Navigator.pop(context);
                });
              },
              icon: const Icon(
                Icons.cancel,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 11, left: 20),
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
                        editController: titleAddController,
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
                        editController: noteAddController,
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
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 40, left: 20),
                          child: itemtime(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: notes.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                  right: 10,
                                  bottom: 5,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue[50],
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  height: 140,
                                  //
                                  //
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 30),
                                        child: Text(
                                          notes[index][0],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8, left: 30),
                                        child: Text(
                                          notes[index][01],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15, left: 30),
                                        child: Row(
                                          children: [
                                            const Icon(Icons.schedule),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: Text(
                                                DateFormat()
                                                    .add_jm()
                                                    .format(DateTime.now()),
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),

                                            ///
                                            /// Edit Button Onpressed
                                            ///
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 160),
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(
                                                    () {
                                                      showDialog(
                                                        context: context,
                                                        builder: (context) {
                                                          titleEditController
                                                                  .text =
                                                              notes[index][0];
                                                          noteEditController
                                                                  .text =
                                                              notes[index][01];
                                                          return editItem(
                                                              myindex: index);
                                                        },
                                                      );
                                                    },
                                                  );
                                                },
                                                icon: const Icon(
                                                  Icons.edit,
                                                ),
                                              ),
                                            ),

                                            ///
                                            /// Delete Button Onpressed
                                            ///
                                            Padding(
                                              padding: const EdgeInsets.only(),
                                              child: IconButton(
                                                onPressed: () {
                                                  removeItem(myindex: index);
                                                },
                                                icon: const Icon(
                                                  Icons.delete,
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
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
