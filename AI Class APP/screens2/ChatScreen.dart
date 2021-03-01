import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var profile = "assets/images/HomeImages/profile.svg";

  Future getMessages() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var url = "http://192.168.1.103:80/API/messages.php";
    var id = preferences.get("id");

    var data = {"id": id};
    var res = await http.post(url, body: data);

    var resbody = jsonDecode(res.body);
    print(resbody);
    return resbody;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            toolbarHeight: 90,
            leadingWidth: 70,
            titleSpacing: 5,
            title: Container(
              width: 200,
              child: Column(children: [
                Container(
                  width: 200,
                  child: Text(
                    "محمد أبوآذان",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'متصل الان',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 13,
                    ),
                  ],
                ),
              ]),
            ),
            // elevation: 10,
            backgroundColor: Colors.lightBlue,
            leading: Padding(
              padding: const EdgeInsets.all(5),
              child: SvgPicture.asset(
                profile,
              ),
            ),
            actions: [
              Padding(padding: EdgeInsets.all(10)),
              Icon(Icons.video_call),
              Padding(padding: EdgeInsets.all(10)),
              Icon(Icons.call),
              Padding(padding: EdgeInsets.all(10)),
              Icon(Icons.more_vert),
              Padding(padding: EdgeInsets.all(10)),
            ],
          ),
          bottomNavigationBar: SingleChildScrollView(child: TextFormField()),

          body: FutureBuilder(
              future: getMessages(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
//                              shr.inkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, i) {
                      return CardMeg(snapshot.data[i]['me'],
                          snapshot.data[i]['msg'], snapshot.data[i]['data']);
                    },
                  );
                }
                return CircularProgressIndicator();
              }),
        ));
  }
}

class CardMeg extends StatefulWidget {
  bool me;
  String msg;
  String data;

  CardMeg(this.me, this.msg, this.data);

  @override
  _CardMegState createState() => _CardMegState();
}

class _CardMegState extends State<CardMeg> {
  var profile = "assets/images/HomeImages/profile.svg";

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: widget.me ? TextDirection.rtl : TextDirection.ltr,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: SvgPicture.asset(
                  profile,
                  width: 40,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RaisedButton(
                        color: widget.me ? Colors.lightBlue : Colors.black12,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),                          // widget.me
                          //     ? BorderRadius.only(
                          //         topLeft: Radius.circular(20),
                          //         bottomRight: Radius.circular(20))
                          //     : BorderRadius.only(
                          //         topRight: Radius.circular(20),
                          //         bottomLeft: Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            Text(widget.msg , style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(widget.data,
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
