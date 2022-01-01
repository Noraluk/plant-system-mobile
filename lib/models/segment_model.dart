import 'package:flutter/material.dart';

class SegmentModel {
  SegmentModel({
    required this.boxDecoration,
    required this.focusBoxDecoration,
    this.icon,
  });

  BoxDecoration boxDecoration;
  BoxDecoration focusBoxDecoration;
  IconData? icon;
}
