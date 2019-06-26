import 'package:training_kedua/whatsapp/model/callmodel.dart';

class CallHelper{
  static var dataCall = [
      CallModel('Ebo', '12.31', 'gambar/anular.png'),
      CallModel('Dude', '09.56', 'gambar/anular.png'),
      CallModel('Rupij', '11.00', 'gambar/anular.png'),
      CallModel('Pikcoy', '23.20', 'gambar/anular.png'),
  ];

  static CallModel getCallItem(int index){
    return dataCall[index];
  }
  static var itemCount = dataCall.length;
}