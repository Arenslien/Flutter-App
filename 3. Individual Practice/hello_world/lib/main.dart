import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[200]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,)
        ],
      )
    );
  }
}


class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'What?',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Hello, World!'),
              ),
          ),
        ],
      )
    );
  }
}



void main() {
  runApp(MaterialApp(
    title: 'My app',
    home: MyScaffold(),
  ));
}














// Hello World
// void main() {
//   runApp(
//     Center(
//       child: Text(
//         'Hello, world!',
//         textDirection: TextDirection.ltr,
//       )
//     )
//   );
// }