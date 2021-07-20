import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _leftDice = 1;
  int _rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Login success!'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Image.asset('assets/dice$_leftDice.png'),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: Image.asset('assets/dice$_rightDice.png'),
                ),
              ],
            ),
          ),
          ButtonTheme(
            buttonColor: Colors.amber,
            minWidth: 100.0,
            height: 50.0,
            child: RaisedButton(
              child: Icon(
                Icons.play_arrow,
                size: 40.0,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _leftDice = Random().nextInt(6) + 1;
                  _rightDice = Random().nextInt(6) + 1;
                });
                showToast('Left Dice : $_leftDice, Right Dice : $_rightDice');
              },
            ),
          ),
        ],
      )),
    );
  }
}

void showToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    backgroundColor: Colors.black,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM
  );
}
