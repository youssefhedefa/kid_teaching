import 'package:flutter/material.dart';
import 'package:kid_teaching/core/helper/image_provider.dart';

class PenguinAnimation extends StatefulWidget {
  const PenguinAnimation({super.key});

  @override
  State<PenguinAnimation> createState() => _PenguinAnimationState();
}

class _PenguinAnimationState extends State<PenguinAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    // Create an animation controller
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );

    // Create a Tween animation that animates the position
    _animation = Tween<Offset>(
      begin: const Offset(2.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(_controller);

    // Start the animation when the widget is initialized
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: const Image(
        height: 146,
        image: AssetImage(
          AssetImageProvider.penguinImage,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the animation controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }
}
