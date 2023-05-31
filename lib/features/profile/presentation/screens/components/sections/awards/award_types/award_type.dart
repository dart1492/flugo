// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

/// Abstract class for the award content
abstract class AwardType {
  String type;
  Widget content;
  AwardType({
    required this.type,
    required this.content,
  });
}
