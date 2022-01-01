import 'package:flutter/material.dart';
import 'package:plant_system_mobile/styles/app_border_style.dart';

class SegmentModel {
  const SegmentModel({
    required this.boxDecoration,
    required this.focusBoxDecoration,
    this.icon,
  });

  final BoxDecoration boxDecoration;
  final BoxDecoration focusBoxDecoration;
  final IconData? icon;

  SegmentModel.first(IconData? icon)
      : this(
          boxDecoration: AppBorderStyle.firstSegment,
          focusBoxDecoration: AppBorderStyle.firstSegmentFocus,
          icon: icon,
        );

  SegmentModel.normal(IconData? icon)
      : this(
          boxDecoration: AppBorderStyle.normal,
          focusBoxDecoration: AppBorderStyle.normalFocus,
          icon: icon,
        );

  SegmentModel.last(IconData? icon)
      : this(
          boxDecoration: AppBorderStyle.lastSegment,
          focusBoxDecoration: AppBorderStyle.lastSegmentFocus,
          icon: icon,
        );

  static SegmentModel get(
    IconData icon, {
    required int lastIndex,
    required int index,
  }) {
    if (index == 0) {
      return SegmentModel.first(icon);
    } else if (index == lastIndex) {
      return SegmentModel.last(icon);
    }
    return SegmentModel.normal(icon);
  }
}
