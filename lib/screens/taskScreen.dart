// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:todoo/Utils/constants.dart';
import 'package:todoo/widgets/tasksList.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  late TextEditingController _controller;
  String? task;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            elevation: 10,
            backgroundColor: Colors.transparent,
            context: context,
            builder: buildBottomSheet,
          );
        },
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
              // ignore: prefer_const_constructors
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              //ignore:prefer_const_constructors
              decoration: BoxDecoration(
                color: kBackButtonColor,
                //ignore:prefer_const_constructors
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(30),
                  topRight: const Radius.circular(30),
                ),
              ),
              // ignore: prefer_const_constructors
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottomSheet(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          color: Colors.transparent,
          // color: kBackButtonShadowColor,
          child: Container(
            decoration: BoxDecoration(
              color: kBackButtonColor,
              // ignore: prefer_const_constructors
              borderRadius: BorderRadius.only(
                // ignore: prefer_const_constructors
                topLeft: Radius.circular(30),
                // ignore: prefer_const_constructors
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(height: 17,),
                // ignore: prefer_const_constructors
                Text(
                  'Add Task',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 17,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: TextFormField(
                    autofocus: true,
                    textInputAction: TextInputAction.next,
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Add a new task',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    maxLines: null,
                    onChanged: (String? val) {
                      task = val;
                    },
                  ),
                ),
                SizedBox(height: 17,),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kButtonColor),
                  ),
                  onPressed: () {},
                  child: const Text('Add'),
                ),
                SizedBox(height: 14,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
