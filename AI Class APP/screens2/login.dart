import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

const loginIMG = "assets/images/loginIMG.svg";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController userNameController = new TextEditingController();

  TextEditingController passwordController = new TextEditingController();

  savepre(var resbody) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("username", resbody['username']);
    preferences.setString("password", resbody['password']);
    preferences.setString("name", resbody['name']);
    preferences.setString("id", resbody['id']);
    preferences.setString("class", resbody['class']);
    preferences.setString("part", resbody['part']);
    preferences.setString("age", resbody['age']);
    preferences.setString("gender", resbody['gender']);
    preferences.setString("phonenumber", resbody['phonenumber']);
  }

  Future login() async {
    var data = {
      "username": userNameController.text,
      'password': passwordController.text
    };
    var url = "http://192.168.1.104:80/API/users.php";
    var res = await http.post(url, body: data);
    var resbody = jsonDecode(res.body);
    print(resbody);
    if ("yes" == resbody['state']) {
      savepre(resbody);
      Navigator.of(context).pushNamed('HomePage');
    } else {
      print("this user not singup ");
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "School App",
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        loginIMG,
                        height: 300,
                      ),
                      TextFormField(
                        controller: userNameController,
                        decoration: InputDecoration(labelText: "اسم المستخدم"),
                      ),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(labelText: "كلمة المرور"),
                        obscureText: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: ElevatedButton(
//                              color: Colors.lightBlue,
//                              shape: RoundedRectangleBorder(
//                                  borderRadius: BorderRadius.circular(30)),
                              child: Text(
                                "تسجيل الدخول",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              onPressed: () {
                                login();
                              }),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
