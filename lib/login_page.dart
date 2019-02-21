import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            _login();
          },
          child: new Text("登录"),
        ),
      ),
    );
  }

  void _login() async {
    //保存数据
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString("token", "jfsdfhiusdhuh23hu23hu23");
    if (await preferences.getString("token").isNotEmpty) {
      Navigator.pushReplacementNamed(context, "home");
    }
  }
}
