import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final _randomizer = Random();
  int _currentDice = 1;

  void _rollDice() {
    //...
    setState(() {
      _currentDice = _randomizer.nextInt(6) + 1;
    });
    print("try change image");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$_currentDice.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: _rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 24,
              // ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text("Roll Dice!")),
      ],
    );
  }
}
