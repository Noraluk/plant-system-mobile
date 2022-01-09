import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Countdown extends StatefulWidget {
  const Countdown({
    Key? key,
    required this.begin,
    this.onStart,
    this.onEnd,
    this.isLoading = false,
  }) : super(key: key);

  final int begin;
  final Function(int)? onStart;
  final VoidCallback? onEnd;
  final bool isLoading;

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  bool _isStart = true;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.begin),
    );

    _animationController!.addListener(() {});
    animate();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if (!_animationController!.isAnimating) {
              showModalBottomSheet(
                context: context,
                builder: (context) => SizedBox(
                  height: 300,
                  child: CupertinoTimerPicker(
                    initialTimerDuration: _animationController!.duration!,
                    onTimerDurationChanged: (time) {
                      setState(() {
                        _animationController!.duration = time;
                      });
                    },
                  ),
                ),
              );
            }
          },
          child: AnimatedBuilder(
              animation: _animationController!,
              builder: (context, child) {
                end();

                return Text(
                  countText,
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }),
        ),
        IconButton(
          onPressed: () {
            Future.delayed(Duration.zero,
                () => _animationController!.isAnimating ? stop() : start());
          },
          iconSize: 70.0,
          icon: Icon(
            _animationController!.isAnimating ? Icons.pause : Icons.play_arrow,
          ),
          splashColor: Colors.transparent,
        ),
      ],
    );
  }

  start() {
    setState(() => _isStart = false);

    widget.onStart!.call(_animationController!.duration!.inSeconds);
    animate();
  }

  animate() {
    if (widget.isLoading) return;

    _animationController!.reverse(
      from: _animationController!.value == 0.0
          ? widget.begin.toDouble()
          : _animationController!.value,
    );

    setState(() => _isStart = false);
  }

  stop() {
    _animationController!.stop();
    widget.onEnd!.call();
  }

  end() {
    if (!_animationController!.isAnimating &&
        widget.onEnd != null &&
        !_isStart) {
      Future.delayed(Duration.zero, () => widget.onEnd!.call());
    }
  }

  Duration get count {
    return _animationController!.duration! * _animationController!.value;
  }

  String get countText {
    return _animationController!.isDismissed
        ? '${_animationController!.duration!.inHours}:${(_animationController!.duration!.inMinutes % 60).toString().padLeft(2, '0')}:${(_animationController!.duration!.inSeconds % 60).toString().padLeft(2, '0')}'
        : '${count.inHours}:${(count.inMinutes % 60).toString().padLeft(2, '0')}:${(count.inSeconds % 60).toString().padLeft(2, '0')}';
  }
}
