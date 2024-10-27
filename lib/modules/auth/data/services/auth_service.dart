import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:stylish_app/modules/auth/data/models/login_model.dart';
import 'package:stylish_app/modules/auth/data/models/register_model.dart';

class ApiServices {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://vcare.integration25.com/api/auth/',
      receiveDataWhenStatusError: true,
    ),
  );

  Future<void> logInService(
      {required String email, required String pass}) async {
    try {
      LoginModel loginModel = LoginModel(email: email, password: pass);

      FormData data = FormData.fromMap(loginModel.toJson());
      var response = await dio.post('login', data: data);
      log(json.encode(response.data));
    } on DioException catch (e) {
      log('Dio Error: ${e.response?.statusCode}, ${e.response?.data}');
    } catch (e) {
      log('Error: $e');
    }
  }

  Future<void> registerService({
    required String name,
    required String phone,
    required String gender,
    required String email,
    required String password,
    required String password_confirmation,
  }) async {
    try {
      RegisterModel registerModel = RegisterModel(
        name: name,
        email: email,
        phone: phone,
        gender: gender,
        password: password,
        password_confirmation: password_confirmation,
      );
      FormData data = FormData.fromMap(registerModel.toJson());

      var response = await dio.post('register', data: data);

      log(json.encode(response.data));
    } on DioException catch (e) {
      log('Dio Error: ${e.response?.statusCode}, ${e.response?.data}');
    } catch (e) {
      log('Error: $e');
    }
  }

  // Future<void> logInService(
  //     {required String email, required String pass}) async {
  //   var headers = {'Accept': 'application/json'};
  //   var data = FormData.fromMap({
  //     'email': email,
  //     'password': pass,
  //   });

  //   var response = await dio.request(
  //     'https://vcare.integration25.com/api/auth/login',
  //     options: Options(
  //       method: 'POST',
  //       headers: headers,
  //     ),
  //     data: data,
  //   );

  //   if (response.statusCode == 200) {
  //     log(json.encode(response.data));
  //   } else {
  //     log(response.statusMessage.toString());
  //   }
  // }

  // Future<void> registerService({
  //   required String name,
  //   required String phone,
  //   required String gender,
  //   required String email,
  //   required String password,
  //   required String confirmpassword,
  // }) async {
  //   var headers = {'Accept': 'application/json'};
  //   var data = FormData.fromMap({
  //     'name': name,
  //     'email': email,
  //     'phone': phone,
  //     'gender': gender,
  //     'password': password,
  //     'password_confirmation': confirmpassword,
  //   });

  //   var response = await dio.request(
  //     'https://vcare.integration25.com/api/auth/register',
  //     options: Options(
  //       method: 'POST',
  //       headers: headers,
  //     ),
  //     data: data,
  //   );

  //   if (response.statusCode == 200) {
  //     log(json.encode(response.data));
  //   } else {
  //     log(response.statusMessage);
  //     log(
  //         '=========================================================================');

  //     log(response.data);
  //   }
  // }
}
