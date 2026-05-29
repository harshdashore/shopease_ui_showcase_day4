import 'package:flutter/material.dart';

class DisableWidget extends StatelessWidget {
  final bool disable;
  final Widget child;
  const DisableWidget({
    super.key,
    required this.disable,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: disable,
      child: child,
    );
  }
}