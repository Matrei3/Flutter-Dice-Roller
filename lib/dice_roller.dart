import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }

}
class _DiceRollerState extends State<DiceRoller>{
  var currentDice=1;
  final randomizer = Random();
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        "resources/dice-$currentDice.png", // Assuming the images are PNGs
        width: 200,
      ),const SizedBox(height: 20,),
      TextButton(
          onPressed: () {
            setState(() {
              currentDice = randomizer.nextInt(6) + 1;
            });
          },
          style: TextButton.styleFrom(

              foregroundColor: Colors.pinkAccent,
              backgroundColor: Colors.white,
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 28)),
          child: const Text('Roll Dice'))
    ]);
  }

}