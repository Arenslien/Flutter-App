import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(AnimatedApp());

class AnimatedApp extends StatefulWidget {
  @override
  _AnimatedAppState createState() => _AnimatedAppState();
}

class _AnimatedAppState extends State<AnimatedApp> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Container',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                width: _width,
                height: _height,
                duration: Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: _borderRadius,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              final random = Random();
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1
              );

              _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
            });
          }
        ),
      ),
    );
  }
}
