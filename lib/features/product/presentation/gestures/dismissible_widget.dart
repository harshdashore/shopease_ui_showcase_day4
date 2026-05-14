import 'package:flutter/material.dart';

class DismissibleWidget extends StatelessWidget {
  final Widget child;
  final String id;
  final VoidCallback onDismiss;

  const DismissibleWidget({
    super.key,
    required this.child,
    required this.id,
    required this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(id),

      onDismissed: (_) {
        onDismiss();
      },

      child: child,
    );
  }
}