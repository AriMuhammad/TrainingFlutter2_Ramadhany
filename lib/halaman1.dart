import 'package:flutter/material.dart';
import 'package:training_kedua/home.dart';

class Halaman1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Halaman 1',warnabg: Colors.white,),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('Back'),
        ),
      ),
    );
  }
}
