import 'package:flutter/material.dart';
import 'package:shopease_ui_showcase_day4/features/product/domain/entities/product_entity.dart';

class ProductDetailsPage extends StatelessWidget {
  final ProductEntity product;

  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(
          tag: product.id,
          child: InteractiveViewer(
            child: Image.asset(product.image),
          ),
        ),
      ),
    );
  }
}