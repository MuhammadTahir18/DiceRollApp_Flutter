import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(
              color: Colors.white, // Set text color to white
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.red,
          centerTitle: true, // Center the title in the AppBar
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=4;

  void buttonpressed(){
    setState(() {
      rightDiceNumber=Random().nextInt(6)+1;
      leftDiceNumber=Random().nextInt(6)+1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                buttonpressed();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  buttonpressed();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );

  }
}



