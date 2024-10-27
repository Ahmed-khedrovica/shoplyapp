import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/modules/auth/data/models/login_model.dart';
import 'package:stylish_app/modules/auth/data/models/register_model.dart';
import 'package:stylish_app/modules/auth/data/services/auth_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(BuildContext context) =>
      BlocProvider.of<AuthCubit>(context);

  final TextEditingController emailControl = TextEditingController();

  final TextEditingController nameControl = TextEditingController();

  final TextEditingController phoneControl = TextEditingController();

  final TextEditingController passControl = TextEditingController();

  final TextEditingController confirmpassControl = TextEditingController();

  String selectedGender = '1';

  ApiServices apiServices = ApiServices();

  Future<void> registerService({
    required String name,
    required String phone,
    required String gender,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    emit(AuthLoading());
    try {
      await apiServices.registerService(
        name: name,
        phone: phone,
        gender: gender,
        email: email,
        password: password,
        password_confirmation: passwordConfirmation,
      );
      emit(
        AuthRegistered(
          RegisterUser: RegisterModel(
              name: name,
              email: email,
              phone: phone,
              gender: gender,
              password: password,
              password_confirmation: passwordConfirmation),
        ),
      );
    } catch (error) {
      emit(AuthError(error: error.toString()));
    }
  }

  Future<void> loginService({
    required String email,
    required String pass,
  }) async {
    emit(AuthLoading());
    try {
      await apiServices.logInService(email: email, pass: pass);
      emit(AuthLoggedIn(
        loginUser: LoginModel(email: email, password: pass),
      ));
    } catch (error) {
      emit(AuthError(error: error.toString()));
    }
  }

  @override
  Future<void> close() {
    emailControl.dispose();
    nameControl.dispose();
    phoneControl.dispose();
    passControl.dispose();
    confirmpassControl.dispose();
    return super.close();
  }
}
