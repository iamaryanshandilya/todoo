// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:todoo/widgets/taskTile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
       //ignore:prefer_const_constructors
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}