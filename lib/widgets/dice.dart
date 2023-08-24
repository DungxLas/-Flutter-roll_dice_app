import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var number = 1 + Random().nextInt(6);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          number = Random().nextInt(7);
          print(number);
          if (number == 0) {
            number++;
          }
        });
      },
      child: Image.asset(
        'assets/images/dice-$number.png',
        width: 200,
      ),
    );
  }
}
