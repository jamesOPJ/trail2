import 'package:flutter/material.dart';

class Group extends StatefulWidget {
  @override
  _GroupState createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Group",
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
      body: Text("Group")
    );
  }
}
