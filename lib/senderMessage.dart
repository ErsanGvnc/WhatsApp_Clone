// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, file_names, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';

class SenderMessage extends StatefulWidget {
  String message, date;

  SenderMessage({
    required this.message,
    required this.date,
  });

  @override
  _SenderMessageState createState() => _SenderMessageState();
}

class _SenderMessageState extends State<SenderMessage> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Color.fromRGBO(37, 45, 49, 1),
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
                bottom: 2,
                right: 10,
                child: Text(
                  widget.date,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
