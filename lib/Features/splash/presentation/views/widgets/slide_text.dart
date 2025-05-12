import 'package:flutter/material.dart';

class SlidText extends StatelessWidget {
  const SlidText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text('Read Free Books', textAlign: TextAlign.center),
        );
      },
    );
  }
}
