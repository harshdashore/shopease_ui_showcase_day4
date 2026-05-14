import 'package:flutter/material.dart';

class HoverWidget extends StatelessWidget {
  final Widget child;

  const HoverWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: child,
    );
  }
}