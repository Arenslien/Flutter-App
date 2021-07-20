import 'package:flutter/material.dart';
import 'mybutton.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up Boxes'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[200],
      ),
      body: _buildButton(),
    );
  }
}

Widget _buildButton() {
  return Padding(
    padding: EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MyButton(
          color: Colors.white,
          text: Text(
            'Login with Google',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          onPressed: () {},
          radius: 10.0,
          image: Image.asset('image/glogo.png'),
        ),
        SizedBox(height: 10.0),
        MyButton(
          color: Colors.indigo[700],
          text: Text(
            'Login with Facebook',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
          radius: 10.0,
          image: Image.asset('image/flogo.png'),
        ),
        SizedBox(height: 10.0),
        MyButton(
          color: Colors.green,
          text: Text(
            'Login with Email',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          onPressed: () {},
          radius: 10.0,
          image: Icon(
            Icons.email,
            size: 35.0,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
