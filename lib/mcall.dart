// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/main.dart';

class MCall extends StatefulWidget {
  @override
  _MCallState createState() => _MCallState();
}

class _MCallState extends State<MCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 27, 34, 1),
      body: Container(
        child: ListView.builder(
          controller: controllerFive,
          shrinkWrap: true,
          itemBuilder: (context, index) => Container(
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
              subtitle: Row(
                children: [
                  Icon(
                    Icons.call_made,
                    color: Color.fromRGBO(0, 168, 132, 1),
                    size: 15,
                  ),
                  Text(
                    info[index]['time'].toString(),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.call,
                color: Color.fromRGBO(0, 168, 132, 1),
              ),
            ),
          ),
          itemCount: info.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(0, 168, 132, 1),
        child: Icon(Icons.add_ic_call),
      ),
    );
  }
}
