import 'package:shopease_ui_showcase_day4/features/product/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts();
}