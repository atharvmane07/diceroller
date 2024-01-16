import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomiser=Random();
  var currentdiceroll = 2;

  void rollDice() {
    setState(() {
      currentdiceroll = randomiser.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
            '/Users/atharv07/Desktop/latestflutter/jan2024/assets/images/dice-images/dice-$currentdiceroll.png',
            width: 200),
        const SizedBox(
          height: 20,
        ), //for making space btw two widgets
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 10,
              // ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll dice'),
        )
      ],
    );
  }
}
