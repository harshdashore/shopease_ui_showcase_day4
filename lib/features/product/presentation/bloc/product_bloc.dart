import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopease_ui_showcase_day4/features/product/domain/usecases/get_products_usecase.dart';
import 'package:shopease_ui_showcase_day4/features/product/presentation/bloc/product_event.dart';
import 'package:shopease_ui_showcase_day4/features/product/presentation/bloc/product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductsUseCase getProductsUseCase;
  ProductBloc(this.getProductsUseCase) : super(ProductInitial()) {
    on<LoadProducts>((event, emit) async {
      emit(ProductLoading());
      final products = await getProductsUseCase();
      emit(ProductLoaded(products));
    });
  }
}
