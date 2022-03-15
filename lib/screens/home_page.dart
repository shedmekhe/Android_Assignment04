// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(

        title: Center(
          child: Text(
            "Frameworks List",
            style: TextStyle(fontSize: 28, color: Colors.cyanAccent),
          ),
        ),

        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 10),
          MyListTile(img: 'mong3', name: 'MongoDB'),
          MyListTile(img: 'ex8', name: 'ExpressJs'),
          MyListTile(img: 'rea2', name: 'ReactJs'),
          MyListTile(img: 'angular', name: 'AngularJs'),
          MyListTile(img: 'next1', name: 'NextJs'),
          MyListTile(img: 'node2', name: 'NodeJs'),
          MyListTile(img: 'SQL', name: 'MySQL'),
          MyListTile(img: 'flutt1', name: 'Flutter'),
          MyListTile(img: 'dock1', name: 'Docker'),
          MyListTile(img: 'spr1', name: 'Spring'),
          MyListTile(img: 'java1', name: 'Java'),



        ],
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
    required this.name,
    required this.img,
  }) : super(key: key);

  final String name, img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.cyanAccent,
          // color: Color(0xff80ACF5),
          // borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
        ),
        child: ListTile(
          title: Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20,
              fontFamily: "Ubuntu",
            ),
          ),
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(300),
              border: Border.all(width: 2, color: Colors.white),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image(
                image: AssetImage("assets/images/$img.jpg"),
                width: 52,
                height: 65,
                fit: BoxFit.cover,
              ),
            ),
          ),
          onTap: () {
            Fluttertoast.showToast(msg:"This is "+name);
          },
        ),
      ),
    );
  }
}
