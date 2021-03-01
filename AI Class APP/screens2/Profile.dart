import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

const profile = "assets/images/HomeImages/profile.svg";

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var username,
      password = "",
      id = "",
      name = "",
      phonenumber = "",
      age = "",
      gender = "",
      clas = "",
      part = "";

  getInfotmation() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString("username");
      password = preferences.getString("password");
      id = preferences.getString("id");
      name = preferences.getString("name");
      phonenumber = preferences.getString("phonenumber");
      age = preferences.getString("age");
      gender = preferences.getString("gender");
      clas = preferences.getString("class");
      part = preferences.getString("part");
    });

  }

  @override
  void initState() {

    getInfotmation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.keyboard_backspace,
                    textDirection: TextDirection.ltr,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
              elevation: 0,
              centerTitle: true,
              title: Text(
                "Smart School",
              ),
              backgroundColor: Colors.lightBlue,
            ),
            drawer: Drawer(),
            body: Container(
              child: ListView(
                children: [
                  Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(10),
//
//                    ),
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(50))),

                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          profile,
                          height: 120,
                        ),
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 2),
                        )
                      ],
                    ),
                  ),
                  Container(
//                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "المعلومات الشخصية",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(50))),
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    child: Text(
                                  "رقم الطالب",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                                Container(
                                    child: Text(
                                  id,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            color: Colors.black54,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    child: Text(
                                  "الاسم",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                                Container(
                                    child: Text(
                                  name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            color: Colors.black26,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    child: Text(
                                  "الصف",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                                Container(
                                    child: Text(
                                  clas,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            color: Colors.black54,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    child: Text(
                                  "الشعبة",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                                Container(
                                    child: Text(
                                  part,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            color: Colors.black26,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    child: Text(
                                  "العمر",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                                Container(
                                    child: Text(
                                  age,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            color: Colors.black54,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    child: Text(
                                  "الجنس",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                                Container(
                                    child: Text(
                                  gender,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            color: Colors.black26,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    child: Text(
                                  "رقم الطالب",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                                Container(
                                    child: Text(
                                  id,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(50))),
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    child: Text(
                                  "رقم الهاتف",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                                Container(
                                    child: Text(
                                  phonenumber,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            )));
  }
}
