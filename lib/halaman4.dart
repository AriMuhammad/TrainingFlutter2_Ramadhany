import 'package:flutter/material.dart';
import 'package:training_kedua/home.dart';
import 'package:training_kedua/whatsapp/helper/callhelper.dart';
import 'package:training_kedua/whatsapp/helper/chathelper.dart';
import 'package:training_kedua/whatsapp/helper/statushelper.dart';
import 'package:training_kedua/whatsapp/model/callmodel.dart';
import 'package:training_kedua/whatsapp/model/chatmodel.dart';
import 'package:training_kedua/whatsapp/model/statusmodel.dart';

class WAPage extends StatefulWidget {
  @override
  _WAPageState createState() => _WAPageState();
}

class _WAPageState extends State<WAPage> with SingleTickerProviderStateMixin {
  TabController myController;

  @override
  void initState() {
    // TODO: implement initState
    myController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        title: Text(
          'Messages',
          style: TextStyle(color: Colors.black),
        ),
        bottom: TabBar(
          labelColor: Colors.black,
          controller: myController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt, color: Colors.black),
            ),
            Tab(
              text: 'Chat',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Panggilan',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: myController,
        children: <Widget>[
          Center(
            child: Icon(Icons.camera_alt),
          ),
          // Chat
          ListView.separated(
            separatorBuilder: (context, index) => (Divider()),
            itemCount: ChatHelper.itemCount,
            itemBuilder: (BuildContext, index) {
              ChatModel chatModel = ChatHelper.getChatItem(index);
              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(chatModel.gambar),
                                fit: BoxFit.cover)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    chatModel.nama,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(chatModel.isipesan,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15)),
                                ],
                              ),
                              Text(
                                chatModel.tanggal,
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              );
            },
          ),
          //Status
          ListView.builder(
              itemCount: StatusHelper.itemCount,
              itemBuilder: (BuildContext, index) {
                StatusModel statusModel = StatusHelper.getStatusItem(index);
                return Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(statusModel.gambarstatus),
                                  fit: BoxFit.fill)),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      statusModel.namastatus,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text(statusModel.tanggalstatus),
                                  ],
                                ),
                                Icon(Icons.more_vert)
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                );
              }),
          //Panggilan
          ListView.builder(
            itemCount: CallHelper.itemCount,
            itemBuilder: (BuildContext, index) {
              CallModel callModel = CallHelper.getCallItem(index);
              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(callModel.gambarpanggilan),
                                fit: BoxFit.fill)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    callModel.namapanggilan,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(callModel.jampanggilan),
                                ],
                              ),
                              Icon(Icons.call),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
