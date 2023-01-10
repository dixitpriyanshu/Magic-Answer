import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[300],
        appBar: AppBar(
          title: Text('Magic Answer'),
          backgroundColor: Colors.blueGrey[600],
        ),
        body: MagicAnswer(),
      ),
    ),
  );
}

class MagicAnswer extends StatefulWidget {
  const MagicAnswer({Key key}) : super(key: key);

  @override
  State<MagicAnswer> createState() => _magicAnswerState();
}

class _magicAnswerState extends State<MagicAnswer> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    ballnumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$ballnumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
