import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "this is hello app",
    theme: ThemeData(
      primaryColor: Colors.pink,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    ),
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
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(60))),
        shadowColor: Colors.pink,
        elevation: 60,
        toolbarHeight: 100,
      ),
      body: LoginWidget(),
      bottomNavigationBar: BottomBarWidget(),
    ),
  ));
}

class BottomBarWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomBarWidgetState();
  }

}

class BottomBarWidgetState extends State<BottomBarWidget> {
  int _bottomBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  BottomNavigationBar(
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.pink,
      backgroundColor: Colors.black,
      currentIndex: _bottomBarIndex,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.login,
            ),
            title: Text("login")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("home")),
      ],
      onTap: (value){
        setState(() {
          _bottomBarIndex = value;
        });

      },

    );
  }


}

class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginWidgetState();
  }
}

class LoginWidgetState extends State<LoginWidget> {
  GlobalKey<FormState> formGlobalKey = GlobalKey();
  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: formGlobalKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "Username",
                  hintText: "請輸入帳號",
                  hintStyle: TextStyle(color: Colors.grey)),
              onSaved: (value) {
                this.username = value;
              },
              validator: (value) {
                if (value == null) return "格式錯誤";
                if (value.isEmpty) return "格式錯誤";
                if (value.length < 6) return "格式錯誤";
                return null;
              },
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.always,

              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: "Password",
                hintText: "請輸入密碼",
                hintStyle: TextStyle(color: Colors.grey),
              ),
              onSaved: (value) {
                this.password = value;
              },
              validator: (value) {
                if (value == null) return "格式錯誤";
                if (value.isEmpty) return "格式錯誤";
                if (value.length < 6) return "格式錯誤";
                return null;
              },
            ),
            SizedBox(
              height: 60,
            ),
            RaisedButton(
                padding: EdgeInsets.all(20),
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(20))),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  formGlobalKey.currentState.save();
                  formGlobalKey.currentState.validate();
                  print("username:$username    password:$password");
                })
          ],
        ),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: "Username",
                hintText: "請輸入帳號",
                hintStyle: TextStyle(color: Colors.grey)),
          ),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: "Password",
              hintText: "請輸入密碼",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
