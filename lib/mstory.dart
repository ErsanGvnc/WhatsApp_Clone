// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';

class MStory extends StatefulWidget {
  @override
  _MStoryState createState() => _MStoryState();
}

class _MStoryState extends State<MStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 27, 34, 1),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
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
                  "Durum güncellemesi eklemek için dokunun",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 10, 10),
                  child: Text(
                    "Görülen güncellemeler",
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(0, 168, 132, 1),
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
