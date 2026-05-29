import 'package:flutter/material.dart';

class DraggableProductWidget<T extends Object>
    extends StatelessWidget {

  final T data;
  final Widget child;

  const DraggableProductWidget({
    super.key,
    required this.data,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Draggable<T>(
      data: data,
      feedback: Material(
        color: Colors.transparent,
        child: SizedBox(
          width: 150,
          child: child,
        ),
      ),
      childWhenDragging: Opacity(
        opacity: 0.5,
        child: child,
      ),

      child: child,
    );
  }
}