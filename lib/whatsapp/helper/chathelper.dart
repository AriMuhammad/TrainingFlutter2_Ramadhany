import 'package:training_kedua/whatsapp/model/chatmodel.dart';

class ChatHelper {
  static var dataChat = [
    ChatModel('IZMI', 'Gimme Fooood','25/06/2019','gambar/g1.jpg'),
    ChatModel('UJEP', 'Im Very Hunryz','25/06/2019','gambar/paradox.png'),
    ChatModel('NCUP', 'Gimme Fooood','25/06/2019','gambar/apostasia.png'),
    ChatModel('DUDE', 'Gimme Fooood','25/06/2019','gambar/elesis.png'),
  ];

  static ChatModel getChatItem(int index){
    return dataChat[index];
  }
  static var itemCount = dataChat.length;
}