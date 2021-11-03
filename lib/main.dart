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
    return Center(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image(image: AssetImage("images/dice1.png")),
                onPressed: () {
                  print("Button 1 pressed");
                },
              ),
              flex: 1,
            ),
            Expanded(
              child: TextButton(
                child: Image(image: AssetImage("images/dice2.png")),
                onPressed: () {
                  print("Button 2 pressed");
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
