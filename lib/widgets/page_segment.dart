import 'package:flutter/material.dart';
import 'package:plant_system_mobile/widgets/segment.dart';

class PageSegment extends StatefulWidget {
  const PageSegment({
    Key? key,
    required this.segmentIcons,
    required this.pages,
    this.actions,
  }) : super(key: key);

  final List<IconData> segmentIcons;
  final List<Widget> pages;
  final List<Function>? actions;

  @override
  _PageSegmentState createState() => _PageSegmentState();
}

class _PageSegmentState extends State<PageSegment> {
  final PageController _pageController = PageController();

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Segment(
          icons: widget.segmentIcons,
          pageController: _pageController,
          pageSelectedIndex: selectedIndex,
          actions: widget.actions,
        ),
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
            children: widget.pages,
          ),
        ),
      ],
    );
  }
}
