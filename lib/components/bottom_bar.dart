

import 'package:flutter/cupertino.dart';

class BottomBar extends BottomNavigationBarItem{
  BottomBar(String icon, String title):
      super(
        icon: Image.asset("assets/image/$icon.png", width: 30,),
        title: Text(title)
      );
}