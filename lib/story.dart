// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 20, 26, 1),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(50, 25, 50, 25),
          child: Container(
            color: Colors.transparent,
            width: screenwidth,
            height: screenheight,
            child: Row(
              children: [
                Container(
                  color: Color.fromRGBO(30, 38, 44, 1),
                  width: screenwidth / 3,
                  height: screenheight,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 35, 10, 0),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              me[0]['profilePic'].toString(),
                            ),
                          ),
                          title: Text(
                            "Durumum",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            "Güncelleme yok",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 10, 10),
                            child: Text(
                              "GÖRÜLDÜ",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Material(
                        color: Colors.transparent,
                        child: ListTile(
                          hoverColor: Color.fromRGBO(44, 53, 58, 1),
                          enabled: true,
                          onTap: () {},
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              info[0]['profilePic'].toString(),
                            ),
                          ),
                          title: Text(
                            info[0]['name'].toString(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            info[0]['time'].toString(),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: ListTile(
                          hoverColor: Color.fromRGBO(44, 53, 58, 1),
                          enabled: true,
                          onTap: () {},
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              info[1]['profilePic'].toString(),
                            ),
                          ),
                          title: Text(
                            info[1]['name'].toString(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            info[1]['time'].toString(),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Stack(
                    children: [
                      Container(
                        color: Color.fromRGBO(11, 20, 26, 1),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.motion_photos_pause_outlined,
                                color: Colors.grey,
                                size: 100,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Durum güncellemesini görmek için bir kişinin adına tıklayın",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
