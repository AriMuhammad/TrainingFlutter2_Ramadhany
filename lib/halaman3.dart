import 'package:flutter/material.dart';
import 'package:training_kedua/customgridview.dart';
import 'package:training_kedua/home.dart';

class Halaman3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halaman 3',
      home: GridUI(),
    );
  }
}

class GridUI extends StatelessWidget {
  final customGrid = MyGridView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'data',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        backgroundColor: Colors.blue,
      ),
      body: customGrid.build(),
    );
  }
}
