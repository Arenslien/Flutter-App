import 'package:commerce/routes.dart';
import 'package:commerce/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E Commerce App',
      theme: theme(),
      initialRoute: '/splash',
      routes: routes,
    );
  }
}

