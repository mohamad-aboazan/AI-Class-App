import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const chat = "assets/images/HomeImages/chat.svg";
const noti = "assets/images/HomeImages/noti.svg";
const profile = "assets/images/HomeImages/profile.svg";
const map = "assets/images/HomeImages/map.svg";
const scheme = "assets/images/HomeImages/scheme.svg";
const week = "assets/images/HomeImages/week.svg";

class HomePage extends StatefulWidget {
  var information;

  HomePage({this.information});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    super.initState();
    firebaseCloudMessaging_Listeners();
  }

  void firebaseCloudMessaging_Listeners() {
    _firebaseMessaging.getToken().then((token) {
      print("this is my token : " + token);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Smart School",
            ),
            backgroundColor: Colors.lightBlue,
          ),
          drawer: Drawer(),
          body: Container(
            child: GridView.count(
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,

              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 15),
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 2,
              // Generate 100 widgets that display their index in the List.
              children: [
                Container(
                    child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('Profile');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        profile,
                        height: 80,
                      ),
                      Text(
                        "الملف الشخصي",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: Colors.white,
                )),
                Container(
                    child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('Messenger');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        chat,
                        height: 80,
                      ),
                      Text(
                        "الرسائل",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: Colors.white,
                )),
                Container(
                    child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('Notifications');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        noti,
                        height: 80,
                      ),
                      Text(
                        "الاشعارات",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: Colors.white,
                )),
                Container(
                    child: RaisedButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        week,
                        height: 70,
                      ),
                      Text(
                        "البرنامج الاسبوعي",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: Colors.white,
                )),
                Container(
                    child: RaisedButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        scheme,
                        height: 80,
                      ),
                      Text(
                        "احصائيات",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: Colors.white,
                )),
                Container(
                    child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('ChatScreen');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        map,
                        height: 80,
                      ),
                      Text(
                        "الخريطة",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: Colors.white,
                )),
              ],
            ),
          ),
        ));
  }
}
