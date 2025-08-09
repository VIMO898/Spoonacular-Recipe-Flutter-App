import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DelayedDisplayAnimation extends StatefulWidget {
  final Duration duration;
  final Offset initialSlidingOffset;
  final Duration delay;
  final Curve curve;
  final Widget child;
  const DelayedDisplayAnimation({
    super.key,
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 800),
    this.curve = Curves.decelerate,
    this.initialSlidingOffset = const Offset(0.0, -0.1),
  });

  @override
  State<DelayedDisplayAnimation> createState() => _DelayedDisplayState();
}

class _DelayedDisplayState extends State<DelayedDisplayAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slidingAnimation;
  late Animation<double> _fadingAnimation;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: widget.duration);
    final delay = widget.delay.inMilliseconds / 1000;
    final slidingTween =
        Tween<Offset>(begin: widget.initialSlidingOffset, end: Offset.zero);
    _slidingAnimation = slidingTween.animate(CurvedAnimation(
        parent: _animationController,
        curve: Interval(delay, 1, curve: widget.curve)));

    final fadingTween = Tween<double>(begin: 0, end: 1);
    _fadingAnimation = fadingTween.animate(CurvedAnimation(
        parent: _animationController,
        curve: Interval(delay, 1, curve: widget.curve)));

    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slidingAnimation,
      child: FadeTransition(opacity: _fadingAnimation, child: widget.child),
    );
  }
}
