import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(HttpApp());


class HttpApp extends StatefulWidget {
  @override
  _HttpAppState createState() => _HttpAppState();
}

class _HttpAppState extends State<HttpApp> {
  List _data = [];
  int _page = 1;
  int _limit = 20;
  _fetchData() {
    http.get('https://picsum.photos/v2/list?page=$_page&limit=$_limit').then( (response) {

      if (response.statusCode == 200) {
        String jsonString = response.body;
        print(jsonString);

        List pictures = jsonDecode(jsonString);

        for (int i=0; i<pictures.length; i++) {
          var picture = pictures[i];
          Picture pictureToAdd = Picture(picture["id"], picture["author"]);
          print(pictureToAdd.author);
          
          setState(() {
            _data.add(pictureToAdd);
            _page++;
          });
          


        }
      } else {
        print('Error!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HTTP & JSON App'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                _fetchData();
              },
            ),
          ],
        ),

        body: ListView.builder(
          itemCount: _data.length,
          itemBuilder: (context, index) {
            Picture picture = _data[index];
            return Card(
              child: Column(
                children: <Widget>[
                  Text(picture.author),
                  Image.network('https://picsum.photos/id/${picture.id}/300/300'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


class Picture {
  /*
  [
    {
        "id": "0",
        "author": "Alejandro Escamilla",
        "width": 5616,
        "height": 3744,
        "url": "https://unsplash.com/...",
        "download_url": "https://picsum.photos/..."
    }
  ]
  */

  String id;
  String author;
  
  Picture(this.id, this.author);
}