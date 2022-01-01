import 'package:flutter/material.dart';
import 'package:plant_system_mobile/extensions/duration_extension.dart';

class Countdown extends StatefulWidget {
  const Countdown({
    Key? key,
    required this.begin,
    this.onStart,
    this.onEnd,
  }) : super(key: key);

  final int begin;
  final VoidCallback? onStart;
  final VoidCallback? onEnd;

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  bool _isStart = true;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.begin),
    );

    super.initState();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, state) {
        end();

        Duration clock =
            _animationController!.duration! * _animationController!.value;

        return Row(
          children: [
            Text(clock.getDigitalClock()),
            IconButton(
              onPressed: () {
                Future.delayed(Duration.zero,
                    () => _animationController!.isAnimating ? stop() : start());
              },
              icon: Icon(
                _animationController!.isAnimating
                    ? Icons.pause
                    : Icons.play_arrow,
              ),
              splashColor: Colors.transparent,
            ),
          ],
        );
      },
    );
  }

  start() {
    setState(() => _isStart = false);

    _animationController!.reverse(
      from: _animationController!.value == 0.0
          ? widget.begin.toDouble()
          : _animationController!.value,
    );
    widget.onStart!.call();
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
}
