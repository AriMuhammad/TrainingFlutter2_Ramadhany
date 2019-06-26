import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:training_kedua/home.dart';


class Halaman2 extends StatelessWidget {
  final dataMakanan = ['ayam', 'ikan', 'sosis', 'biskuit'];
  final gambarMakanan = [
    Icons.local_drink,
    Icons.music_note,
    Icons.loyalty,
    Icons.local_laundry_service
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Makanan',
        warnabg: Colors.white,
      ),
      body: ListView.builder(
        itemCount: dataMakanan.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(0.1),
            child: Card(
              child: ListTile(
              title: Text(dataMakanan[index]),
              onTap: () {
                Toast.show("${dataMakanan[index].toString()}", context,
                    duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
              },
              trailing: Icon(gambarMakanan[index]))
            ),
          );
        },
      ),
    );
  }
}