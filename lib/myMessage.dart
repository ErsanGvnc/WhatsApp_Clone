// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, file_names

import 'dart:io';

import 'package:flutter/material.dart';

class MyMessage extends StatefulWidget {
  String message, date;

  MyMessage({
    required this.message,
    required this.date,
  });

  @override
  _MyMessageState createState() => _MyMessageState();
}

class _MyMessageState extends State<MyMessage> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Color.fromRGBO(5, 96, 98, 1),
          margin: Platform.isAndroid || Platform.isIOS
              ? EdgeInsets.symmetric(horizontal: 10, vertical: 5)
              : EdgeInsets.symmetric(horizontal: 100, vertical: 5),
          // margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  widget.message,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      widget.date,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white60,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.done_all,
                      size: 20,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
