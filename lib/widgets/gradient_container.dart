import 'package:flutter/material.dart';
import 'package:roll_dice_app/widgets/dice.dart';

//import 'styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 45, 7, 98),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Dice(),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 28,
                ),
              ),
              child: Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
