import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Dice game"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                children: [
                  Expanded(child: Image.asset('image/dice$leftDice.png')),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Image.asset('image/dice$rightDice.png')),
                ],
              ),
            ),
            ButtonTheme(
              minWidth: 100.0,
              height: 60.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                    rightDice = Random().nextInt(6) + 1;
                  });
                },
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
