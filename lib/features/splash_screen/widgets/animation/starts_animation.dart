import 'package:flutter/material.dart';

class CustomOpacityAnimated extends StatefulWidget {
  const CustomOpacityAnimated(
      {super.key, required this.widget,});

  final Widget widget;


  @override
  State<CustomOpacityAnimated> createState() => _CustomOpacityAnimatedState();
}

class _CustomOpacityAnimatedState extends State<CustomOpacityAnimated>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Create an animation controller
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4500),
      vsync: this,
    );

    // Create a Tween animation that animates the opacity
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    // Start the animation when the widget is initialized
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: widget.widget,
    );
  }

  @override
  void dispose() {
    // Dispose of the animation controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }
}
