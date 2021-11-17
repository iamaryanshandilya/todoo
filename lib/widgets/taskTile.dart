// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoo/Utils/constants.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool? newVal) {
    setState(() {
      isChecked = newVal!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // ignore:prefer_const_constructors
      title: Text(
        'This is a task.',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(isChecked, checkboxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function(bool?)? toggleCheckBoxState;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  TaskCheckBox(this.checkboxState, this.toggleCheckBoxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: kButtonColor,
      value: checkboxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
