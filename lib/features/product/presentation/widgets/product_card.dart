import 'package:flutter/material.dart';
import 'package:shopease_ui_showcase_day4/features/product/domain/entities/product_entity.dart';

class ProductCard extends StatefulWidget {
  final ProductEntity product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> scaleAnimation;

  bool expanded = false;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    scaleAnimation = Tween<double>(
      begin: 1,
      end: 0.95,
    ).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onTapDown(TapDownDetails details) {
    controller.forward();
  }

  void onTapUp(TapUpDetails details) {
    controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: onTapDown,
      onTapUp: onTapUp,

      child: ScaleTransition(
        scale: scaleAnimation,

        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),

          height: expanded ? 300 : 180,

          margin: const EdgeInsets.all(12),

          child: Card(
            elevation: 5,

            child: Column(
              children: [

                Hero(
                  tag: widget.product.id,

                  child: Image.asset(
                    widget.product.image,
                    height: 120,
                  ),
                ),

                Text(widget.product.title),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      expanded = !expanded;
                    });

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Added to cart"),
                      ),
                    );
                  },

                  child: const Text("Add To Cart"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}