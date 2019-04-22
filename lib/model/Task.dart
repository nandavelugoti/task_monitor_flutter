import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Task {
  String title;
  Icon icon;
  bool status;

  Task(String title) {
    this.title = title;
    this.icon = new Icon(Icons.event);
    this.status = false;
  }
}