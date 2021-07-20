import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Middle 01 review',
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You hava pushed the button this many time:'),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        _counter++;
                      });
                    },
                  ),
                  SizedBox(width: 20.0),
                  FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        _counter--;
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
