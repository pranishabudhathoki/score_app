import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Score App',
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Score Changer'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              'Score is',
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                color: Colors.green,
                fontSize: 125,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'increase',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: increaseNumber,
              ),
              SizedBox(
                width: 5,
              ),
              RaisedButton(
                color: Colors.red,
                child: Text(
                  'decrease',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: decreaseNumber,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
