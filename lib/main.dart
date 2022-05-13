import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          title: const Text('Dicee'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.indigo,
        ),
        body: const Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int ldn = 1;
  int rdn = 1;

  void changeDiceFace() {
    setState(() {
      ldn = Random().nextInt(6) + 1;
      rdn = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex: 2,
            child: TextButton(
              onPressed: () {
                changeDiceFace();
                // print('Left dice got pressed');
              },
              child: Image.asset('images/dice$ldn.png'),
            ),
          ),
          Expanded(
            // flex: 1,
            child: TextButton(
              onPressed: () {
                changeDiceFace();
                // print('Right dice got pressed');
              },
              child: Image.asset('images/dice$rdn.png'),
            ),
          ),
        ],
      ),
    );
  }
}
