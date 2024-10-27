import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../data/models/product_model.dart';
import '../data/services/get_all_product_service.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  static ProductCubit get(BuildContext context) =>
      BlocProvider.of<ProductCubit>(context);

  int selectedSizeIndex = 2;
  final List<int> sizes = [6, 7, 8, 9, 10];

  final searchController = TextEditingController();
  bool isLoading = true;

  final List<ProductModel> products = [];
  List<ProductModel> filteredProducts = [];

  final GetAllProductService getAllProductService = GetAllProductService();

  void changeSelectedSizeIndex(int index) {
    selectedSizeIndex = index;
    emit(ChangeSelectedSizeIndex());
  }
  Future<List<ProductModel>> getAllProduct() async {
    products.clear();
    filteredProducts.clear();
    isLoading = true;
    emit(ProductLoading());
    try {
      products.addAll(await getAllProductService.getAllProduct());
      filteredProducts = products;
      isLoading = false;
      emit(ProductLoaded(products: products, isLoading: isLoading));
      return products;
    } on DioException {
      emit(ProductError(message: 'No internet connection'));
      return [];
    } catch (e) {
      emit(ProductError(message: e.toString()));
      return [];
    }
  }

  void filterProducts(String query) {
    final List<ProductModel> tempProducts = products
        .where((product) =>
            product.title!.toLowerCase().contains(query.toLowerCase()))
        .toList();
    filteredProducts = tempProducts;
    emit(ProductLoaded(products: filteredProducts, isLoading: isLoading));
  }
}
