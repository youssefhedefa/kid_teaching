import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/helper/image_provider.dart';

class BirdAnimation extends StatefulWidget {
  const BirdAnimation({super.key});

  @override
  State<BirdAnimation> createState() => _BirdAnimationState();
}

class _BirdAnimationState extends State<BirdAnimation>
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
      begin: const Offset(-1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(_controller);

    // Start the animation when the widget is initialized
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image(
        width: 170.w,
        image: const AssetImage(
          AssetImageProvider.birdImage,
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
