import 'package:shopease_ui_showcase_day4/features/product/data/datasource/product_local_data_source.dart';
import 'package:shopease_ui_showcase_day4/features/product/data/model/product_model.dart';
import 'package:shopease_ui_showcase_day4/features/product/domain/entities/product_entity.dart';
import 'package:shopease_ui_showcase_day4/features/product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductLocalDataSource dataSource;

  ProductRepositoryImpl(this.dataSource);

  @override
  Future<List<ProductEntity>> getProducts() async {
    final data = dataSource.getProducts();

    return data.map((e) => ProductModel.fromJson(e)).toList();
  }
}