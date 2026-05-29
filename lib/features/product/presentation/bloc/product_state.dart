abstract class ProductState {}

class ProductInitial extends ProductState {

}

class ProductLoading extends ProductState {

}

class ProductLoaded extends ProductState {
  final List products;

  ProductLoaded(this.products);
}