import 'dart:math';
import 'package:flutter/material.dart';

final rendomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = rendomizer.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      var newRoll = rendomizer.nextInt(6) + 1;
      currentDiceRoll = newRoll == currentDiceRoll ? rendomizer.nextInt(6) + 1 : newRoll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/dice-$currentDiceRoll.png',
                  width: 200,
                ),
                SizedBox(height: 28),
                TextButton(
                  onPressed: rollDice, 
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  child: const Text('Roll Dice')),
              ],
            );
  }
}