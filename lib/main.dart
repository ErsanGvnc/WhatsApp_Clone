// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import, avoid_print, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/mmessage.dart';
import 'package:whatsapp_clone/mobile.dart';
import 'package:whatsapp_clone/myMessage.dart';
import 'package:whatsapp_clone/senderMessage.dart';
import 'package:whatsapp_clone/story.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('WhatsApp');
    setWindowMinSize(Size(765, 520));
    setWindowMaxSize(Size.infinite);
  }
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Platform.isAndroid || Platform.isIOS ? Mobile() : MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final controllerOne = ScrollController();
final controllerTwo = ScrollController();
final controllerThere = ScrollController();
final controllerFour = ScrollController();
final controllerFive = ScrollController();
final controllerSix = ScrollController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    String dropdownValue = 'Yeni grup';

    print("width:$screenwidth & height:$screenheight");
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      drawer: Container(
        width: screenwidth / 3.3,
        child: Drawer(
          backgroundColor: Color.fromRGBO(17, 27, 33, 1),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    ListView(
                      controller: controllerThere,
                      padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 25, 10, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 90,
                                    backgroundImage: NetworkImage(
                                      me[0]['profilePic'].toString(),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 50),
                              Text(
                                "Adınız",
                                style: TextStyle(color: Colors.green[800]),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    me[0]['name'].toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.edit,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 15),
                              Text(
                                me[0]['inf'].toString(),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 50),
                              Text(
                                "Hakkımda",
                                style: TextStyle(color: Colors.green[800]),
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    me[0]['description'].toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.edit,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 100,
                      width: screenwidth,
                      color: Color.fromRGBO(32, 44, 51, 1),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "Profil",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // child: Drawer(
        //   backgroundColor: Colors.red,
        //   child: Column(
        //     children: [
        //       Expanded(
        //         child: ListView(
        //           controller: controllerThere,
        //           padding: EdgeInsets.zero,
        //           children: [
        //             DrawerHeader(
        //               decoration: BoxDecoration(
        //                 color: Colors.amber,
        //                 image: DecorationImage(
        //                   image: NetworkImage("asd"),
        //                   fit: BoxFit.cover,
        //                   filterQuality: FilterQuality.high,
        //                 ),
        //               ),
        //               child: Container(
        //                 child: Column(
        //                   children: [
        //                     Flexible(
        //                       child: CircleAvatar(
        //                         radius: screenwidth / 8,
        //                         backgroundImage: NetworkImage(
        //                           "",
        //                         ),
        //                         backgroundColor: Colors.red,
        //                       ),
        //                     ),
        //                     SizedBox(
        //                       height: screenheight / 50,
        //                     ),
        //                     Text(
        //                       "",
        //                       style: TextStyle(
        //                         fontSize: 18,
        //                         overflow: TextOverflow.ellipsis,
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //             ListTile(
        //               leading: Icon(Icons.home),
        //               title: Text("Ana Sayfa"),
        //               onTap: () {
        //                 setState(() {});
        //                 Navigator.pop(context);
        //               },
        //             ),
        //             ListTile(
        //               leading: Icon(Icons.home),
        //               title: Text("Ana Sayfa"),
        //               onTap: () {
        //                 setState(() {});
        //                 Navigator.pop(context);
        //               },
        //             ),
        //             ListTile(
        //               leading: Icon(Icons.home),
        //               title: Text("Ana Sayfa"),
        //               onTap: () {
        //                 setState(() {});
        //                 Navigator.pop(context);
        //               },
        //             ),
        //             ListTile(
        //               leading: Icon(Icons.article),
        //               title: Text("Haberler"),
        //               onTap: () {
        //                 setState(() {});
        //                 Navigator.pop(context);
        //               },
        //             ),
        //             ListTile(
        //               leading: Icon(Icons.event),
        //               title: Text("Etkinlikler"),
        //               onTap: () {
        //                 setState(() {});
        //                 Navigator.pop(context);
        //               },
        //             ),
        //             ListTile(
        //               leading: Icon(Icons.redeem),
        //               title: Text("Çekiliş"),
        //               onTap: () {
        //                 setState(() {});
        //                 Navigator.pop(context);
        //               },
        //             ),
        //             ListTile(
        //               leading: Icon(Icons.forum),
        //               title: Text("Forum"),
        //               onTap: () {
        //                 setState(() {});
        //                 Navigator.pop(context);
        //               },
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  color: Color.fromRGBO(17, 27, 33, 1),
                  width: screenwidth / 3.3,
                  height: screenheight,
                  child: ListView.separated(
                    controller: controllerOne,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => Container(
                      width: 150,
                      height: 70,
                      color: Color.fromRGBO(17, 27, 33, 1),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            info[index]['profilePic'].toString(),
                          ),
                        ),
                        title: Text(
                          info[index]['name'].toString(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          info[index]['message'].toString(),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        trailing: Text(
                          info[index]['time'].toString(),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    itemCount: info.length,
                    padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                    itemBuilder: (context, index) => Divider(
                      color: Colors.grey,
                      thickness: 0.2,
                      indent: 70,
                    ),
                  ),
                ),
                Container(
                  color: Color.fromRGBO(32, 44, 51, 1),
                  width: screenwidth / 3.3,
                  height: 105,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Container(
                          color: Color.fromRGBO(32, 44, 51, 1),
                          width: screenwidth / 2.3,
                          height: 60,
                          child: Row(
                            children: [
                              Builder(
                                builder: (BuildContext context) {
                                  return InkWell(
                                    onTap: () {
                                      Scaffold.of(context).openDrawer();
                                    },
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        me[0]['profilePic'].toString(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Story(),
                                    ),
                                  );
                                },
                                icon: Icon(
                                  Icons.motion_photos_pause_outlined,
                                  color: Colors.grey,
                                  size: 27,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                  size: 27,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_horiz,
                                  color: Colors.grey,
                                  size: 27,
                                ),
                              ),
                              // DropdownButton<String>(
                              //   value: dropdownValue,
                              //   icon: Icon(
                              //     Icons.more_horiz,
                              //     color: Colors.grey,
                              //     size: 27,
                              //   ),
                              //   elevation: 16,
                              //   dropdownColor: Color.fromRGBO(32, 44, 51, 1),
                              //   style: TextStyle(color: Colors.grey),
                              //   autofocus: false,
                              //   onChanged: (String? newValue) {
                              //     setState(() {
                              //       dropdownValue = newValue!;
                              //     });
                              //   },
                              //   items: <String>[
                              //     'Yeni grup',
                              //     'Arşivlenmiş',
                              //     'Yıldızlı nesajlar',
                              //     'Ayarlar',
                              //     'Çıkış'
                              //   ].map<DropdownMenuItem<String>>(
                              //     (String value) {
                              //       return DropdownMenuItem<String>(
                              //         value: value,
                              //         child: Text(value),
                              //       );
                              //     },
                              //   ).toList(),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        color: Color.fromRGBO(17, 27, 33, 1),
                        width: screenwidth / 2.3,
                        height: 45,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(15, 6, 15, 6),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Aratın veya yeni sohbet başlatın",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 18,
                              ),
                              fillColor: Color.fromRGBO(32, 44, 51, 1),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0.1, color: Colors.transparent),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              // contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0.1, color: Colors.transparent),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey,
              width: 0.2,
              height: screenheight,
            ),
            Flexible(
              child: Stack(
                children: [
                  ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    padding: EdgeInsets.fromLTRB(0, 65, 0, 10),
                    itemBuilder: (context, index) {
                      if (messages[index]['isMe'] == true) {
                        return MyMessage(
                          message: messages[index]['text'].toString(),
                          date: messages[index]['time'].toString(),
                        );
                      }
                      return SenderMessage(
                        message: messages[index]['text'].toString(),
                        date: messages[index]['time'].toString(),
                      );
                    },
                  ),
                  Container(
                    color: Color.fromRGBO(32, 44, 51, 1),
                    width: screenwidth,
                    height: 60,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              info[0]['profilePic'].toString(),
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            info[0]['name'].toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.video_call_outlined,
                              color: Colors.grey,
                              size: 27,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.call_outlined,
                              color: Colors.grey,
                              size: 27,
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            color: Colors.grey,
                            width: 1,
                            height: 20,
                          ),
                          SizedBox(width: 15),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 27,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.grey,
                              size: 27,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Container(
                          color: Color.fromRGBO(32, 44, 51, 1),
                          height: 60,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.mood_outlined,
                                  color: Colors.grey,
                                  size: 26,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.attach_file,
                                  color: Colors.grey,
                                  size: 26,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Container(
                            color: Color.fromRGBO(32, 44, 51, 1),
                            // width: 150,
                            height: 60,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: "Bir mesaj yazın",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  fillColor: Color.fromRGBO(42, 57, 66, 1),
                                  filled: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(15, 5, 0, 0),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0.1, color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  // contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0.1, color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          color: Color.fromRGBO(32, 44, 51, 1),
                          height: 60,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mic_none_outlined,
                              color: Colors.grey,
                              size: 26,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
