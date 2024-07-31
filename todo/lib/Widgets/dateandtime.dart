import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class dateTime extends StatelessWidget {
  const dateTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.calendar_today),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            DateFormat('yMMMMd').format(DateTime.now()),
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}