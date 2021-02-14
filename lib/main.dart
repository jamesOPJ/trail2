import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "this is hello app",
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "ohohoho",
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.w900,

          ),
        ),
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(60))
        ),
        shadowColor: Colors.pink,
        elevation: 60,
        toolbarHeight: 100,
      ),
      body: BodyWidget()
    ),
  ));
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        "heloooooo222",
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
