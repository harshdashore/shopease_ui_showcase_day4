import 'package:flutter/material.dart';

class WishlistDragTarget<T extends Object>
    extends StatelessWidget {
  final Function(T) onItemAccepted;
  const WishlistDragTarget({
    super.key,
    required this.onItemAccepted,
  });

  @override
  Widget build(BuildContext context) {
    return DragTarget<T>(
      onAcceptWithDetails: (details) {
        onItemAccepted(details.data);
      },

      builder: (
          context,
          candidateData,
          rejectedData,
          ) {
        return Container(
          height: 120,
          width: 120,
          alignment: Alignment.center,

          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(12),
          ),

          child: const Text(
            "Drop Here",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}