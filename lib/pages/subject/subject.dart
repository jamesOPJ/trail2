import 'package:flutter/material.dart';

class Subject extends StatefulWidget {
  @override
  _SubjectState createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Subject",
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
      body: Text("Subject")
    );
  }
}
