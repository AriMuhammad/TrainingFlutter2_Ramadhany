import 'package:flutter/material.dart';

class MyGridView{
  Card getTampilanGridView(nama,image){
    return Card(
      elevation: 7,
      child: Column(
        children: <Widget>[
          Image.network(image, fit: BoxFit.fill,height: 140,),
          Center(child: Text(nama),)
        ],
      ),
    );
  }

  GridView build(){
    return GridView.count(
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      children: <Widget>[
        getTampilanGridView('Water?', 'https://media.giphy.com/media/4LgA7gSThPVVS/giphy.gif'),
        getTampilanGridView('Zzz', 'https://media.giphy.com/media/LrrgXQj4OOu2Y/giphy.gif'),
        getTampilanGridView('Meow', 'https://media.giphy.com/media/yXPquATCb8kGk/giphy.gif'),
        getTampilanGridView('Yummy', 'https://media.giphy.com/media/xT0BKpjVhcEQDdTQRy/giphy.gif'),
      ],
    );
  }
}