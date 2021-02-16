import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Profile",
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
      body: Text("Profile")
    );
  }
}
