// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:todoo/Utils/constants.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kButtonColor,
        //ignore:prefer_const_constructors
        child: Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                CircleAvatar(
                  backgroundColor: kBackButtonColor,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 31,
                    color: kButtonColor,
                  ),
                ),
                //ignore: prefer_const_constructors
                SizedBox(
                  height: 10,
                ),
                //ignore:prefer_const_constructors
                Text(
                  "TODOO",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                //ignore: prefer_const_constructors
                SizedBox(
                  height: 10,
                ),
                //ignore:prefer_const_constructors
                Text(
                  "17 Tasks",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              //ignore:prefer_const_constructors
              decoration: BoxDecoration(
                color: Colors.white,
                //ignore:prefer_const_constructors
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
