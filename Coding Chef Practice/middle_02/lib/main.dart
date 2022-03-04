import 'package:flutter/material.dart';
import 'package:middle_02/secondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log in',
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Log in'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: null,
              accountEmail: null,
              decoration: BoxDecoration(color: Colors.amber[600]),
            ),
          ],
        ),
      ),
      body: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                  ),
                  Center(
                    child: Image(
                      image: AssetImage('assets/B_able_logo.png'),
                      width: 200.0,
                      height: 200.0,
                    ),
                  ),
                  Form(
                    child: Theme(
                      data: ThemeData(
                        primaryColor: Colors.amber[900],
                        inputDecorationTheme: InputDecorationTheme(
                          labelStyle: TextStyle(
                            color: Colors.amber[800],
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              autofocus: true,
                              controller: controller,
                              decoration:
                                  InputDecoration(labelText: 'Enter "ID"'),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
                              controller: controller2,
                              decoration:
                                  InputDecoration(labelText: 'Enter Password'),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            ButtonTheme(
                              minWidth: 100.0,
                              height: 50.0,
                              child: RaisedButton(
                                color: Colors.orangeAccent,
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                                onPressed: () {
                                  if (controller.text == 'admin' &&
                                      controller2.text == 'b_able1') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            SecondPage(),
                                      ),
                                    );
                                  } else if (controller.text != 'admin') {
                                    showSnackBar(context, 'ID');
                                  } else if (controller2.text != 'b_able1') {
                                    showSnackBar(context, 'Password');
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void showSnackBar(BuildContext context, String wrongPart) {
  Scaffold.of(context).showSnackBar(
    SnackBar(
      content: Text(
        '$wrongPart is wrong!',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black),
      ),
      duration: Duration(milliseconds: 1000),
      backgroundColor: Colors.amberAccent,
    ),
  );
}
