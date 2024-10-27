import 'package:dio/dio.dart';
import '../models/product_model.dart';

class GetAllProductService {
  Dio dio = Dio(
    BaseOptions(baseUrl: 'https://fakestoreapi.com/'),
  );
  Future<List<ProductModel>> getAllProduct() async {
    List<ProductModel> products = [];

    var response = await dio.get('products');
    response.data.forEach(
      (product) {
        products.add(ProductModel.fromMap(product));
      },
    );

    return products;
  }

  
}
