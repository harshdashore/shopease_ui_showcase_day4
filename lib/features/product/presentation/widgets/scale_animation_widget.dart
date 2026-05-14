import 'package:flutter/material.dart';

class ScaleAnimationWidget extends StatelessWidget {
  final Widget child;

  const ScaleAnimationWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 1.0, end: 1.2),
      duration: const Duration(milliseconds: 300),

      builder: (_, value, child) {
        return Transform.scale(
          scale: value,
          child: child,
        );
      },

      child: child,
    );
  }
}