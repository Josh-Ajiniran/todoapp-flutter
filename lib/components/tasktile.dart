import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.text, this.isChecked, this.toggleCheckState});
  final String text;
  final bool isChecked;
  final Function toggleCheckState;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Text(
        text,
        style: TextStyle(
            fontSize: 16,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (checkState) {
          print(checkState);
        },
      ),
    );
  }
}
