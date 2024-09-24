import 'package:flutter/material.dart';

class TaskModel {
  final List<String> image;
  final List<String> text1;
  final List<String> text2;
  final List<String> buttonName;
  final List<Color> color;

  TaskModel({
    required this.image,
    required this.text1,
    required this.text2,
    required this.buttonName,
    required this.color,
  });
}
