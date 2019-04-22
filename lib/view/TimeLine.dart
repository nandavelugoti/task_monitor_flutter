import 'package:flutter/material.dart';
import 'package:task_monitor_flutter/model/Task.dart';

class TimeLine extends StatefulWidget {
  TimeLine({Key key}) : super(key: key);

  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  List<Task> _tasks = [
    Task("Yoga"),
    Task("Reading"),
    Task("Guitar Practice"),
    Task("Wash Clothes"),
    Task("Workout"),
    Task("PC Gaming"),
    Task("Work on Projects"),
    Task("Research"),
    Task("Movie Time"),
    Task("Daily Lecture"),
    Task("Music Theory"),
    Task("Cooking"),
    Task("Iron Press"),
    Task("Free Time"),
    Task("Vacation")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(children: _tasks.map(_buildRow).toList());
  }

  Widget _buildRow(Task task) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Dismissible(
        key: Key(task.title),
        direction: DismissDirection.horizontal,
        child: ExpansionTile(title: Text("${task.title}")),
        background: Container(
          color: Colors.green,
          child: Row(
            children: <Widget>[
              Icon(Icons.done),
              Text("Done"),
            ],
          ),
        ),
        secondaryBackground: Container(
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("Delete"),
              Icon(Icons.delete),
            ],
          ),
        ),
      ),
    );
  }
}
