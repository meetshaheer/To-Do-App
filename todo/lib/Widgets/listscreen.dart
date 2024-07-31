import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/Widgets/List.dart';
import 'package:todo/Widgets/itemTime.dart';
import 'package:todo/Widgets/mainScreen.dart';
import 'mainScreen.dart';

class listviewScreen extends StatefulWidget {
  const listviewScreen({super.key});

  @override
  State<listviewScreen> createState() => _listviewScreenState();
}

class _listviewScreenState extends State<listviewScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
              itemCount: list().notes.length,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 30),
                          child: Text(
                            list().notes[index][0],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 30),
                          child: Text(
                            list().notes[index][1],
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 30),
                          child: Row(
                            children: [
                              const Icon(Icons.schedule),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  DateFormat().add_jm().format(DateTime.now()),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                  ),
                                ),
                              )
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
    );
  }
}
