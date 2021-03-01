import 'dart:async';
import 'package:workmanager/workmanager.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class ChatBloc {
  final Socket socket;
  StreamController<String> _textFieldCtrl = StreamController<String>();
  StreamController<bool> _submitBtnCtrl = StreamController<bool>();
  StreamController<String> _chatItemsCtrl = StreamController<String>();

  ChatBloc(this.socket) {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        new FlutterLocalNotificationsPlugin();
    var android = new AndroidInitializationSettings("@mipmap/ic_launcher");
    var ios = new IOSInitializationSettings();
    var initsettings = new InitializationSettings(android: android, iOS: ios);
    flutterLocalNotificationsPlugin.initialize(initsettings,
        onSelectNotification: reciveMes);
    _textFieldCtrl.stream.listen((value) {
      _submitBtnCtrl.sink.add(value != null && value.isNotEmpty);
    });
    socket.connect();

    socket.on('connect_error', (value) {
      // handle
    });

    socket.on('chat message', (value) {
      showNotification(flutterLocalNotificationsPlugin);
      _chatItemsCtrl.sink.add(value);
    });
  }

  Future reciveMes(String s) {
    print("hello");
  }

  showNotification(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) {
    var android = AndroidNotificationDetails("channelId", "ddd", "ddddddddd",
        priority: Priority.high);
    var ios = IOSNotificationDetails();
    var platform = new NotificationDetails(android: android, iOS: ios);
    flutterLocalNotificationsPlugin.show(0, "title", "body", platform,
        payload: "send message ");
  }

  sendMessage(String message) {
    socket.emit('chat message', 'From Mobile: $message');
  }

  Stream<bool> get submitButtonStream => _submitBtnCtrl.stream;

  Stream<String> get chatItemsStream => _chatItemsCtrl.stream;

  void onTextValueChange(String value) => _textFieldCtrl.sink.add(value);

  Stream dispose() {
    _textFieldCtrl.close();
    _submitBtnCtrl.close();
    _chatItemsCtrl.close();
  }
}
