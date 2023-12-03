

import 'package:flutter/material.dart';
import 'package:kid_teaching/core/theming/text_style.dart';
import 'package:kid_teaching/features/home_screen/presentation/views/widgets/bottom_nav_item.dart';

class AnimatedNavItem extends StatefulWidget {
  const AnimatedNavItem(
      {super.key,
        required this.label,
        required this.clicked,
        required this.image});

  final String label;
  final bool clicked;
  final String image;

  @override
  State<AnimatedNavItem> createState() => _AnimatedNavItemState();
}

class _AnimatedNavItemState extends State<AnimatedNavItem>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1100),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(0.0, -0.6),
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {

    if (widget.clicked) {
      _controller.forward();
    }

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Text(
          widget.label,
          style: TextStyleProvider.fontRed24Regular,
        ),
        widget.clicked
            ? SlideTransition(
          position: _animation,
          child: BottomItemNav(
            image: widget.image,
          ),
        )
            : BottomItemNav(
          image: widget.image,
        ),
      ],
    );

  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
