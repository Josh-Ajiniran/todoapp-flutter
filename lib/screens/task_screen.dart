import 'package:flutter/material.dart';
import 'package:Todoey/models/tasks.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 40.0, top: 120.0),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.list,
                color: Colors.lightBlueAccent,
                size: 50.0,
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text(
              'Todoey',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.2,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text(
              '${taskLists.length} Tasks',
              style: TextStyle(
                  fontSize: 19.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ListView.builder(
                padding: EdgeInsets.only(left: 40.0, top: 40.0, right: 20.0),
                itemCount: taskLists.length,
                itemBuilder: (_, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(taskLists[index].text,
                          style: TextStyle(
                              fontSize: 16,
                              decoration: taskLists[index].isDone == true
                                  ? TextDecoration.lineThrough
                                  : null)),
                      Checkbox(
                        value: taskLists[index].isDone,
                        onChanged: (value) {
                          taskLists[index].isDone = value;
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(right: 16.0),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.lightBlueAccent,
            onPressed: () {},
            child: Icon(Icons.add, size: 50.0),
          ),
        ),
      ),
    );
  }
}
