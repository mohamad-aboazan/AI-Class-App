import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  IO.Socket socket;

  createSocketConnection() {
    socket = IO.io('http://192.168.1.103:3000/', <String, dynamic>{
      'transports': ['websocket'],
    });
    print("3");
    socket.on('mfu1', (value) {
      print("mfu1 value : "+ value);
    });
    socket.on('mfu2', (value) {
      print("mfu1");
    });
    socket.emit('chat message', {'id':'5' , 'message':"hello server how are you"});
    this.socket.on("connect", (_) => print('Connected'));
    this.socket.on("disconnect", (_) => print('Disconnected'));
    print("4");
  }
}
