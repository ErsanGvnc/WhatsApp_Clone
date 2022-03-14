// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/main.dart';
import 'package:whatsapp_clone/mmessage.dart';

class MChat extends StatefulWidget {
  @override
  _MChatState createState() => _MChatState();
}

class _MChatState extends State<MChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 27, 34, 1),
      body: Container(
        child: ListView.builder(
          controller: controllerFour,
          shrinkWrap: true,
          itemBuilder: (context, index) => Container(
            width: 150,
            height: 70,
            color: Color.fromRGBO(17, 27, 33, 1),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MMessage(),
                  ),
                );
              },
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
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(0, 168, 132, 1),
        child: Icon(Icons.message),
      ),
    );
  }
}
