import 'package:flutter/material.dart';

class CardBackgroundWidget extends StatelessWidget {
  const CardBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                offset: Offset(0, 4), blurRadius: 8, color: Colors.black26),
          ]),
    );
  }
}
