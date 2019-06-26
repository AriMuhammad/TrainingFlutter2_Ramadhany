import 'package:flutter/material.dart';
import 'package:training_kedua/halaman3.dart';
import 'package:training_kedua/halaman4.dart';
import 'halaman1.dart';
import 'halaman2.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: TextStyle(color: Colors.black),),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      ),
      body: HalamanUI(),
    );
  }
}

class HalamanUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
              'https://media.giphy.com/media/kWqTfdz5RJBRe/giphy.gif',
              fit: BoxFit.fill,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text('Training Flutter 25 Juni 2019'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.block),
                      Text(
                        'No Enter',
                        style: TextStyle(fontSize: 15)
                        )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Halaman1()));
                  },
                ),
                GestureDetector(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.local_pizza),
                      Text(
                        'Foods',
                        style: TextStyle(fontSize: 15)
                        )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Halaman2()));
                  },
                ),
                GestureDetector(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.pets),
                      Text(
                        'Pets',
                        style: TextStyle(fontSize: 15)
                        )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Halaman3()));
                  },
                ),
                GestureDetector(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.chat_bubble_outline),
                      Text(
                        'Messages',
                        style: TextStyle(fontSize: 15)
                        )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>WAPage()));
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  Color warnabg;

  CustomAppBar({Key key, this.title, this.warnabg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      elevation: 30,
      automaticallyImplyLeading: true,
      leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          color: Colors.black,
        ),
        IconButton(icon: Icon(Icons.settings), color: Colors.black),
      ],
      backgroundColor: warnabg,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
