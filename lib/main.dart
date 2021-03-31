import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //double orjWidth = MediaQuery.of(context).size.width;
    double cameraWidth = 5; //orjWidth / 24;
    double yourWidth = 60;//(orjWidth - cameraWidth) / 5;

    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.teal[800],
            title: Text(
              'WhatsApp',
              style: TextStyle(fontSize: 22),
            ),
            actions: <Widget>[
              IconButton(
                iconSize: 27,
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () {
                  // handle the press
                },
              ),
              IconButton(
                iconSize: 27,
                icon: Icon(Icons.more_vert),
                tooltip: 'More Options',
                onPressed: () {
                  // handle the press
                },
              ),
            ],
            bottom: TabBar(
                //controller: _tabController,
                indicatorColor: Colors.white,
                labelPadding: EdgeInsets.symmetric(
                    horizontal: 20),//(orjWidth - (cameraWidth + yourWidth * 3)) / 8),
                isScrollable: true,
                tabs: [
                  Container(
                    child: Tab(icon: Icon(Icons.camera_alt)),
                    width: cameraWidth,
                  ),
                  Container(
                    child: Tab(
                      text: "CHATS",
                    ),
                    width: yourWidth,
                  ),
                  Container(
                    child: Tab(
                      text: "STATUS",
                    ),
                    width: yourWidth,
                  ),
                  Container(
                    child: Tab(
                      text: "CALL",
                    ),
                    width: yourWidth,
                  ),
                ]),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('Camera'),
              ),
              Center(
                child: Column(
                  //crossAxisAlignment: ,
                  //mainAxisAlignment: ,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            margin:
                                EdgeInsets.only(left: 15, top: 15, right: 15),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg'),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(3),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Audiii❤❤',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(2),
                                alignment: Alignment.bottomLeft,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Msg',
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            margin:
                                EdgeInsets.only(left: 15, top: 15, right: 15),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg'),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(3),
                                alignment: Alignment.topLeft,
                                child: Text('Audiii'),
                              ),
                              Container(
                                margin: EdgeInsets.all(2),
                                alignment: Alignment.bottomLeft,
                                child: Text('Msg'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text('Status'),
              ),
              Center(
                child: Text('Calls'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
