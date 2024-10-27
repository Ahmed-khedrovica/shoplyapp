import 'package:dio/dio.dart';

class GetAllCategories {
  Dio dio = Dio(
    BaseOptions(baseUrl: 'https://fakestoreapi.com/'),
  );

  Future<List<String>> getAllCategories() async {
    List<String> categories = [];

    var response = await dio.get('products/categories');
    categories = List<String>.from(response.data);

    return categories;
  }
}
