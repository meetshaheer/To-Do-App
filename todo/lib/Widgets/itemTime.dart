import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class itemtime extends StatelessWidget {
  const itemtime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Today",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 5,
            top: 4,
          ),
          child: Icon(
            Icons.hdr_strong,
            size: 17,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            DateFormat('yMMMMd').format(DateTime.now()),
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
