import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopease_ui_showcase_day4/features/product/data/datasource/product_local_data_source.dart';
import 'package:shopease_ui_showcase_day4/features/product/data/repositories/product_repository_impl.dart';
import 'package:shopease_ui_showcase_day4/features/product/domain/usecases/get_products_usecase.dart';
import 'package:shopease_ui_showcase_day4/features/product/presentation/bloc/product_bloc.dart';
import 'package:shopease_ui_showcase_day4/features/product/presentation/bloc/product_event.dart';
import 'package:shopease_ui_showcase_day4/features/product/presentation/pages/product_page.dart';

void main() {
  final repository = ProductRepositoryImpl(
    ProductLocalDataSource(),
  );

  final getProductsUseCase =
  GetProductsUseCase(repository);

  runApp(
    MyApp(
      getProductsUseCase: getProductsUseCase,
    ),
  );
}

class MyApp extends StatelessWidget {
  final GetProductsUseCase getProductsUseCase;

  const MyApp({
    super.key,
    required this.getProductsUseCase,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

        BlocProvider<ProductBloc>(
          create: (_) => ProductBloc(
            getProductsUseCase,
          )..add(LoadProducts()),
        ),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const ProductPage(),
      ),
    );
  }
}