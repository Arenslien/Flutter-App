import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  MyButton({this.image, this.text, this.color, this.radius, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      buttonColor: color,
      height: 50.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: image,
            ),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
