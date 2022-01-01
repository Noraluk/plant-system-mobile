import 'package:flutter/material.dart';
import 'package:plant_system_mobile/models/segment_model.dart';
import 'package:plant_system_mobile/styles/app_border_style.dart';
import 'package:plant_system_mobile/widgets/segment_item.dart';

class Segment extends StatefulWidget {
  const Segment({
    Key? key,
    required this.icons,
    this.pageController,
    this.pageSelectedIndex,
  }) : super(key: key);

  final List<IconData> icons;
  final PageController? pageController;
  final int? pageSelectedIndex;

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
          BoxDecoration _boxDecoration = AppBorderStyle.normal;
          BoxDecoration _focusBoxDecoration = AppBorderStyle.normalFocus;
          if (index == 0) {
            _boxDecoration = AppBorderStyle.firstSegment;
            _focusBoxDecoration = AppBorderStyle.firstSegmentFocus;
          } else if (index == widget.icons.length - 1) {
            _boxDecoration = AppBorderStyle.lastSegment;
            _focusBoxDecoration = AppBorderStyle.lastSegmentFocus;
          }

          return SegmentItem(
            segmentModel: SegmentModel(
              icon: widget.icons[index],
              boxDecoration: _boxDecoration,
              focusBoxDecoration: _focusBoxDecoration,
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
