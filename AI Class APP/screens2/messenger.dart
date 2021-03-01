import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const loginIMG = "assets/images/HomeImages/profile.svg";

class Messenger extends StatefulWidget {
  @override
  _MessengerState createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
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
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(50))),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "الرسائل",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: RaisedButton(
                  elevation: 10,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: SvgPicture.asset(
                          loginIMG,
                          height: 70,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "محمد أبوآذان (استاذ الرياضيات)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    size: 20,
                                    color: Colors.green,
                                  ),
                                  Text("مرحبا كيف حالك استاذ محمد!")
//                                  Row(
//                                    children: [
//
//                                    ],
//                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: RaisedButton(
                  elevation: 10,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: SvgPicture.asset(
                          loginIMG,
                          height: 70,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "اياد ابو كم (استاذ الموسيقى)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    size: 20,
                                    color: Colors.green,
                                  ),
                                  Text("مرحبا كيف حالك استاذ اياد!")
//                                  Row(
//                                    children: [
//
//                                    ],
//                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: RaisedButton(
                  elevation: 10,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: SvgPicture.asset(
                          loginIMG,
                          height: 70,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "محمد طه (استاذ الرسم)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    size: 20,
                                    color: Colors.green,
                                  ),
                                  Text("مرحبا كيف حالك استاذ طه!"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: RaisedButton(
                  elevation: 10,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: SvgPicture.asset(
                          loginIMG,
                          height: 70,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "عمر القاضي (استاذ العلوم)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    size: 20,
                                    color: Colors.green,
                                  ),
                                  Text("مرحبا كيف حالك استاذ عمر!")
//                                  Row(
//                                    children: [
//
//                                    ],
//                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: RaisedButton(
                  elevation: 10,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: SvgPicture.asset(
                          loginIMG,
                          height: 70,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "محمد أبوآذان (استاذ الرياضيات)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    size: 20,
                                    color: Colors.green,
                                  ),
                                  Text("مرحبا كيف حالك استاذ محمد!")
//                                  Row(
//                                    children: [
//
//                                    ],
//                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: RaisedButton(
                  elevation: 10,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: SvgPicture.asset(
                          loginIMG,
                          height: 70,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "محمد أبوآذان (استاذ الرياضيات)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    size: 20,
                                    color: Colors.green,
                                  ),
                                  Text("مرحبا كيف حالك استاذ محمد!")
//                                  Row(
//                                    children: [
//
//                                    ],
//                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: RaisedButton(
                  elevation: 10,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: SvgPicture.asset(
                          loginIMG,
                          height: 70,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "محمد أبوآذان (استاذ الرياضيات)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    size: 20,
                                    color: Colors.green,
                                  ),
                                  Text("مرحبا كيف حالك استاذ محمد!")
//                                  Row(
//                                    children: [
//
//                                    ],
//                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
