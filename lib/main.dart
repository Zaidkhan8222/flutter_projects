import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[600],
        appBar: AppBar(
          title:const Text('Magic 8 Ball'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: const Magicball(),
      ),
    ),
  );
}

class Magicball extends StatefulWidget {
  const Magicball({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MagicballState createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {
  int magicball = 1;
  void changeDiceFace(){
    setState(() {
      magicball = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: 	TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/ball$magicball.png'),
            ),
          ),
        ],
      ),
    );
  }
}