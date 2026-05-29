import 'package:flutter/material.dart';

class FadeAnimationWidget extends StatelessWidget {
  final bool visible;
  final Widget child;
  const FadeAnimationWidget({
    super.key,
    required this.visible,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: visible ? 1 : 0,
      duration: const Duration(seconds: 1),
      child: child,
    );
  }
}