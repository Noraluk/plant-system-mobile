import 'package:flutter/material.dart';

class AppBorderStyle {
  AppBorderStyle._();

  static BoxDecoration normal = BoxDecoration(
    border: Border.all(color: Colors.blue[200]!),
  );

  static BoxDecoration firstSegment = BoxDecoration(
    border: Border.all(color: Colors.blue[200]!),
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(10.0),
      bottomLeft: Radius.circular(10.0),
    ),
  );

  static BoxDecoration lastSegment = BoxDecoration(
    border: Border.all(color: Colors.blue[200]!),
    borderRadius: const BorderRadius.only(
      topRight: Radius.circular(10.0),
      bottomRight: Radius.circular(10.0),
    ),
  );

  static BoxDecoration normalFocus = BoxDecoration(
    border: Border.all(color: Colors.blue[200]!),
    color: Colors.blue[200],
  );

  static BoxDecoration firstSegmentFocus = BoxDecoration(
    border: Border.all(color: Colors.blue[200]!),
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(10.0),
      bottomLeft: Radius.circular(10.0),
    ),
    color: Colors.blue[200],
  );

  static BoxDecoration lastSegmentFocus = BoxDecoration(
    border: Border.all(color: Colors.blue[200]!),
    borderRadius: const BorderRadius.only(
      topRight: Radius.circular(10.0),
      bottomRight: Radius.circular(10.0),
    ),
    color: Colors.blue[200],
  );
}
