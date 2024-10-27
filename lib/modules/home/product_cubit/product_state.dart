part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ChangeSelectedSizeIndex extends ProductState {}

final class ProductLoading extends ProductState {}

final class ProductLoaded extends ProductState {
  final List<ProductModel> products;
  final bool isLoading;
  ProductLoaded({required this.isLoading, required this.products});
}

final class ProductError extends ProductState {
  final String message;
  ProductError({required this.message});
}
