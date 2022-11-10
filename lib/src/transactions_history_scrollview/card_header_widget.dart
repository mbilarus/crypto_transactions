import 'package:flutter/material.dart';

class CardHeaderWidget extends StatelessWidget {
  const CardHeaderWidget({super.key, required this.title});

  static const double padding = 16;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50.0,
      color: Colors.grey[300],
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(
          width: 15.0,
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 15.0,
              fontFamily: 'Segoe UI',
              fontWeight: FontWeight.w400),
        ),
      ]),
    );
  }
}
