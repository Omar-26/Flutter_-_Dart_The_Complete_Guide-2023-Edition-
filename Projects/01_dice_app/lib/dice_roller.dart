import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// _ Means its a Private Class
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(
      () {
        currentDiceRoll = randomizer.nextInt(6) + 1;
      },
    ); // Tells Flutter That We Will Use Another UI State (Rebuild)
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          // $VarName : Injects Int inside String
          width: 200,
        ),
        const SizedBox(height: 20), // Blank Space
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 8,
              left: 10,
              right: 10,
            ),
            backgroundColor: Colors.white,
            foregroundColor: const Color.fromARGB(255, 74, 8, 4),
            textStyle: const TextStyle(
              fontSize: 40,
              fontFamily: 'Englebert',
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
