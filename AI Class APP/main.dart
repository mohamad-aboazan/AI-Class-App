import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:testfirebase/screens2/ChatScreen.dart';
import 'package:testfirebase/screens2/HomePage.dart';
import 'package:testfirebase/screens2/Notifications.dart';
import 'package:testfirebase/screens2/Profile.dart';
import 'package:testfirebase/screens2/SplashScreen.dart';
import 'package:testfirebase/screens2/messenger.dart';

void main() {
  // SocketService s = new SocketService();
  // s.createSocketConnection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.lightBlue,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: SplashScreen(), //SplashScreen()
      routes: {
        'HomePage': (context) {
          return HomePage();
        },
        'Profile': (context) {
          return Profile();
        },
        'Messenger': (context) {
          return Messenger();
        },
        'Notifications': (context) {
          return Notifications();
        },
        'ChatScreen': (context) {
          return ChatScreen();
        },

      },
    );
  }
}
