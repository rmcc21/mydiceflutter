import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var random = Random();
    var leftDiceNumber = 1;
    var rightDiceNumber = 1;
    return Center(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child:
                    Image(image: AssetImage("images/dice$leftDiceNumber.png")),
                onPressed: () {
                  print("Button 1 pressed");
                  leftDiceNumber = random.nextInt(6);
                },
              ),
              flex: 1,
            ),
            Expanded(
              child: TextButton(
                child:
                    Image(image: AssetImage("images/dice$rightDiceNumber.png")),
                onPressed: () {
                  print("Button 2 pressed");
                  rightDiceNumber = random.nextInt(6);
                },
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
