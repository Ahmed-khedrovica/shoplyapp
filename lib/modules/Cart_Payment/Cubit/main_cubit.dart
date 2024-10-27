import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_state.dart';

class mainCubit extends Cubit<mainState> {
  mainCubit() : super(mainInitial());

  static mainCubit get(context) => BlocProvider.of(context);

  void navigateToCheckOut() {
    emit(CheckOutScreenState());
  }

  void navigateToBag() {
    emit(ShoppingPagScreenState());
  }

  void navigateToPayment() {
    emit(ShoppingPaymentScreenState());
  }

  void navigateBack() {
    emit(BackState());
  }

  int Page1 = 0;

  void IncPage({required int Page}) {
    Page1 = Page; // Assign Page to Page1
    emit(PagechangeState());
  }


  void IncPage1() {
    Page1++;
    emit(IncPageState());
  }  void decPage1() {
    Page1--;
    emit(IncPageState());
  }
}
