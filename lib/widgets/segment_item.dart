import 'package:flutter/material.dart';
import 'package:plant_system_mobile/models/segment_model.dart';

class SegmentItem extends StatefulWidget {
  const SegmentItem({
    Key? key,
    required this.segmentModel,
    required this.index,
    required this.selectedIndex,
    required this.changeSelectedIndex,
  }) : super(key: key);

  final SegmentModel segmentModel;
  final int index;
  final int selectedIndex;
  final Function(int) changeSelectedIndex;

  @override
  State<SegmentItem> createState() => _SegmentItemState();
}

class _SegmentItemState extends State<SegmentItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.changeSelectedIndex(widget.index),
      child: Container(
        decoration: widget.index == widget.selectedIndex
            ? widget.segmentModel.focusBoxDecoration
            : widget.segmentModel.boxDecoration,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        child: Center(
          child: Icon(
            widget.segmentModel.icon,
            color: widget.index == widget.selectedIndex
                ? Colors.black
                : Colors.black.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
