import 'package:flutter/material.dart';
import 'package:meta/meta.dart'; // Import for @required annotation

class ChatModel {
  final String name;
  final String icon;
  final bool isGroup;
  final String time;
  final String currentMessage;

  ChatModel({
    required this.name,
    required this.currentMessage,
    required this.isGroup,
    required this.icon,
    required this.time,
  });
}
