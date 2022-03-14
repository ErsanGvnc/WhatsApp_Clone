// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/mcall.dart';
import 'package:whatsapp_clone/mchat.dart';
import 'package:whatsapp_clone/mstory.dart';
import 'main.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(18, 27, 34, 1),
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
          backgroundColor: Color.fromRGBO(31, 44, 52, 1),
          bottom: TabBar(
            indicatorColor: Color.fromRGBO(0, 168, 132, 1),
            labelColor: Color.fromRGBO(0, 168, 132, 1),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "SOHBETLER"),
              Tab(text: "DURUM"),
              Tab(text: "ARAMALAR"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MChat(),
            MStory(),
            MCall(),
          ],
        ),
      ),
    );
  }
}
