import 'package:shopease_ui_showcase_day4/features/product/domain/entities/product_entity.dart';
import 'package:shopease_ui_showcase_day4/features/product/domain/repositories/product_repository.dart';

class GetProductsUseCase {
  final ProductRepository repository;

  GetProductsUseCase(this.repository);

  Future<List<ProductEntity>> call() {
    return repository.getProducts();
  }
}