import 'package:flutter/material.dart';

class Mall extends StatefulWidget {
  @override
  _MallState createState() => _MallState();
}

class _MallState extends State<Mall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Mall",
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(60))),
        shadowColor: Colors.pink,
        elevation: 60,
        toolbarHeight: 100,
      ),
      body: Text("Mall")
    );
  }
}
