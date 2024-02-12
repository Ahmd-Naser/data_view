// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: English(),
    );
  }
}

class English extends StatelessWidget {
  const English({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 90,
        centerTitle: true,
        title: Text("ahmed nasser", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 33),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 66,
                  backgroundImage: AssetImage("assets/img/okabe.jpeg"),
                ),
                Icon(Icons.verified, color: Colors.blue[300], size: 27),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name : ", style: TextStyle(color: Colors.grey[50])),
                Text(
                  "Okareen",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 44,
                    fontFamily: "myfont",
                  ),
                ),
                SizedBox(
                  height: 33,
                ),
                Text("Current Level :", style: TextStyle(color: Colors.grey[50])),
                Text(
                  "Mado Scientisto",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 33,
                    fontFamily: "myfont"
                  ),
                ),
                SizedBox(
                  height: 33,
                ),
                Row(
                  children: [
                    Icon(Icons.email, color: Colors.grey[50], size: 27),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "okabe@sern.com",
                      style: TextStyle(
                        color: Colors.grey[50],
                        fontSize: 21,
                      ),
                    ),
                  ],
                ),
            
              ],
            ),
          ),
        ],
      ),
    );
  }
}
