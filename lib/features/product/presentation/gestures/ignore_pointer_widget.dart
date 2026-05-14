import 'package:flutter/material.dart';

class IgnoreTouchWidget extends StatelessWidget {
  final bool ignoring;
  final Widget child;

  const IgnoreTouchWidget({
    super.key,
    required this.ignoring,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: ignoring,
      child: child,
    );
  }
}