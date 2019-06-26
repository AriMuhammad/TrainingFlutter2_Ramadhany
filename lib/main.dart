import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:training_kedua/introslide.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Training Flutter',
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool loading = true;

  // @override
  // void initState() {
  //   Future.delayed(Duration(seconds: 3)).then((_SplashPageState){
  //     setState(() {
  //      loading=false; 
  //     });
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SplashScreen.navigate(
    name: 'asset/intro.flr',
    next: Intro(),
    until: () => Future.delayed(Duration(seconds: 2)),
    loopAnimation: '1',
    endAnimation: '1',
    startAnimation: '1',
);
  }
}