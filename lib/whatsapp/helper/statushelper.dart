import 'package:training_kedua/whatsapp/model/statusmodel.dart';

class StatusHelper {
  static var dataStatus = [
      StatusModel('status saya','hari ini 09.32','gambar/anular.png'),
      StatusModel('status saya','hari ini 09.32','gambar/anular.png'),
  ];

static StatusModel getStatusItem(int index){
    return dataStatus[index];
  }
  static var itemCount = dataStatus.length;
}