import 'package:flutter/material.dart';
import 'dart:math';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
    'assets/5.png',
    'assets/6.png',
  ];

  int num = Random().nextInt(6);
  
  void rollDice() {
    setState(() {
      num = Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              images[num],
              width: 200,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 28,
                  ),
                ),
                child: Text('Roll Dice'),
              ),
            ),
          ],
        )
      )
    );
  }
}
