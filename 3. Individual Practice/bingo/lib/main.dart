import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:bingo/components/BingoButton.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}


class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  GlobalKey bingoKey;
  List<BingoButton> bingoButtons = [
    BingoButton("수련회 참여하는 장면 사진"),
    BingoButton("도서부 마음에 드는 책   캡쳐해서 보내주기"),
    BingoButton("해당 일에 들은그림일기"),
    BingoButton("설교노트 작성 후 인증"),
    BingoButton("강사님 성함 3행시"),
    BingoButton("조별활동 때 강의 말씀   암송"),
    BingoButton("수련회 참여하는 장면 사진"),
    BingoButton("경배와 찬양 시간 때찬양 3곡"),
    BingoButton("기억에 남는 한 마디 나눔"),
  ];

  var _image;

  bool isBingo(List bingoList) {
    List answer = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8],
      [0, 3, 6], [1, 4, 7], [2, 5, 8],
      [0, 4, 8], [2, 4, 6]
    ];
    List checked = [];

    for(int i=0; i<9; i++) {
      checked.add(bingoList[i].ischecked());
    }

    return true;
  }

  static captureBingo(GlobalKey key) async {
    if (key == null) return null;

    RenderRepaintBoundary boundary = key.currentContext.findRenderObject();

    final image = await boundary.toImage(pixelRatio: 3);
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final pngBytes = byteData.buffer.asUint8List();

    return pngBytes;
  }

  Widget buildImage(Uint8List bytes) => bytes != null ? Image.memory(bytes) : Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("실로암 빙고를 만들어 보자!"),
      ),
      body: Column(
          children: [
            Expanded(
              key: bingoKey,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  scrollDirection: Axis.vertical,
                  children: [
                    bingoButtons[0],
                    bingoButtons[1],
                    bingoButtons[2],
                    bingoButtons[3],
                    bingoButtons[4],
                    bingoButtons[5],
                    bingoButtons[6],
                    bingoButtons[7],
                    bingoButtons[8],
                  ],
                ),
              ),
            ),
            ElevatedButton(
              child: Text("빙고 이미지 저장"),
              onPressed: () async {
                final bytes1 = await captureBingo(bingoKey);_image = buildImage(bytes1);              
              }, 
            ),
            _image == null? Container() : _image,
          ],
      ),
    );
  }
}

