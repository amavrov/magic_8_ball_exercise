import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomePage(),
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Ask me anything'),
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ballState = 1;

  void shakeBall() {
    setState(() {
      ballState = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: TextButton(
            child: Image.asset('images/ball$ballState.png'),
            onPressed: () {
              shakeBall();
            },
          ),
        ),
      ],
    );
  }
}
