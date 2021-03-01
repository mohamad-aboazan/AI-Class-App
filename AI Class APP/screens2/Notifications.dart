import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'cardNotif.dart';

const exam = "assets/images/notiImages/exam.svg";
const homework = "assets/images/notiImages/exam.svg";
const lis = "assets/images/notiImages/lis.svg";
const mark = "assets/images/notiImages/mark.svg";
const mangment = "assets/images/notiImages/mangment.svg";

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.height;
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
              child: Container(
                child: Column(
                  children: [
                    notifUp(),
                    Container(
                      height: 500,
                      child: lvbuilder(),
                    )

//
                  ],
                ),
              ),
            )));
  }
}

class notifUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        "الاشعارات",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class lvbuilder extends StatefulWidget {
  @override
  _lvbuilderState createState() => _lvbuilderState();
}

class _lvbuilderState extends State<lvbuilder> {
  Future getNotif() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var url = "http://192.168.1.104:80/API/notifcation.php";
    var id = preferences.get("id");
    var name = preferences.get("name");
    var data = {"id": id, "name": name};
    var res = await http.post(url, body: data);

    var resbody = jsonDecode(res.body);
    print(resbody);
    return resbody;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getNotif(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
//                              shrinkWrap: true,
              itemCount: snapshot.data.length,
              itemBuilder: (context, i) {
                return CardNotif(
                    snapshot.data[i]['notif'],
                    "assets/images/notiImages/" +
                        snapshot.data[i]['type'] +
                        ".svg");
              },
            );
          }
          return CircularProgressIndicator();
        });
  }
}
