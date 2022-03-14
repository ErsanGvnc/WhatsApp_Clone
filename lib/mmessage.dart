// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/main.dart';
import 'package:whatsapp_clone/myMessage.dart';
import 'package:whatsapp_clone/senderMessage.dart';

class MMessage extends StatefulWidget {
  @override
  _MMessageState createState() => _MMessageState();
}

class _MMessageState extends State<MMessage> {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 27, 34, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(31, 44, 52, 1),
        titleSpacing: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                info[0]['profilePic'].toString(),
              ),
            ),
            SizedBox(width: 10),
            Text(
              info[0]['name'].toString(),
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            ListView.builder(
              controller: controllerSix,
              reverse: true,
              itemCount: messages.length,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
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
            // Container(
            //   color: Color.fromRGBO(32, 44, 51, 1),
            //   width: screenwidth,
            //   height: 60,
            //   child: Padding(
            //     padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            //     child: Row(
            //       children: [
            //         CircleAvatar(
            //           backgroundImage: NetworkImage(
            //             info[0]['profilePic'].toString(),
            //           ),
            //         ),
            //         SizedBox(width: 20),
            //         Text(
            //           info[0]['name'].toString(),
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontWeight: FontWeight.w600,
            //             fontSize: 16,
            //           ),
            //         ),
            //         Spacer(),
            //         IconButton(
            //           onPressed: () {},
            //           icon: Icon(
            //             Icons.video_call_outlined,
            //             color: Colors.grey,
            //             size: 27,
            //           ),
            //         ),
            //         IconButton(
            //           onPressed: () {},
            //           icon: Icon(
            //             Icons.call_outlined,
            //             color: Colors.grey,
            //             size: 27,
            //           ),
            //         ),
            //         SizedBox(width: 15),
            //         Container(
            //           color: Colors.grey,
            //           width: 1,
            //           height: 20,
            //         ),
            //         SizedBox(width: 15),
            //         IconButton(
            //           onPressed: () {},
            //           icon: Icon(
            //             Icons.search,
            //             color: Colors.grey,
            //             size: 27,
            //           ),
            //         ),
            //         IconButton(
            //           onPressed: () {},
            //           icon: Icon(
            //             Icons.more_horiz,
            //             color: Colors.grey,
            //             size: 27,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      //color: Color.fromRGBO(32, 44, 51, 1),
                      color: Colors.transparent,
                      // width: 150,
                      height: 65,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Mesaj",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            fillColor: Color.fromRGBO(42, 57, 66, 1),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.mood_outlined,
                              color: Colors.grey,
                            ),

                            suffixIcon: Row(
                              children: [
                                Spacer(),
                                Icon(
                                  Icons.attach_file,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 15),
                                Icon(
                                  Icons.camera_alt,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 15),
                              ],
                            ),
                            contentPadding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.1, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            // contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.1, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(0, 168, 132, 1),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
