import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

// ignore: must_be_immutable
class BingoButton extends StatefulWidget {
  String text;

  BingoButton(String text) {
    this.text = text;
  }

  @override
  _BingoButtonState createState() => _BingoButtonState();
}

class _BingoButtonState extends State<BingoButton> {
  File _image;
  final picker = ImagePicker();
  final ButtonStyle basicStyle = ElevatedButton.styleFrom(
    primary: Colors.white60,
    onPrimary: Colors.black,
  );

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  bool isChecked() {
    return _image == null ? false : true; 
  }

  @override
  Widget build(BuildContext context) {
    return _image == null? 
    ElevatedButton(
      style: basicStyle,
      child: Text(widget.text),
      onPressed: () {
        getImage();
      },
    ):
    Image.file(_image);
  }
}