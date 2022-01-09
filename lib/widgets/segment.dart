import 'package:flutter/material.dart';
import 'package:plant_system_mobile/models/segment_model.dart';
import 'package:plant_system_mobile/widgets/segment_item.dart';

class Segment extends StatefulWidget {
  const Segment({
    Key? key,
    required this.icons,
    this.pageController,
    this.pageSelectedIndex,
    this.actions,
  }) : super(key: key);

  final List<IconData> icons;
  final PageController? pageController;
  final int? pageSelectedIndex;
  final List<Function>? actions;

  @override
  State<Segment> createState() => _SegmentState();
}

class _SegmentState extends State<Segment> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      padding: const EdgeInsets.only(right: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(widget.icons.length, (index) {
          return SegmentItem(
            segmentModel: SegmentModel.get(
              widget.icons[index],
              lastIndex: widget.icons.length - 1,
              index: index,
            ),
            index: index,
            selectedIndex: widget.pageSelectedIndex != null
                ? widget.pageSelectedIndex!
                : selectedIndex,
            changeSelectedIndex: changeSelectedIndex,
          );
        }),
      ),
    );
  }

  changeSelectedIndex(int value) {
    setState(() {
      selectedIndex = value;

      if (widget.actions != null) widget.actions![value].call();
      if (widget.pageController != null) {
        widget.pageController!.animateToPage(
          selectedIndex,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });
  }
}
