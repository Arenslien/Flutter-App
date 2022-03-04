import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color selectColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'middle 01',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Middle 01 about Stateful Widget'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.red,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          selectColor = Colors.red;
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.green,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          selectColor = Colors.green;
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.blue,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          selectColor = Colors.blue;
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.white,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          selectColor = Colors.white;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 16.0,
              ),
            ],
          ),
        ),
        backgroundColor: selectColor,
      ),
    );
  }
}
