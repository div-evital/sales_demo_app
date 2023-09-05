import 'package:evital_sales/cubit/bottombar/bottom_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  static int navIndex = 0;
  BottomNavBarCubit() : super(BottomNavBarState(currentIndex: navIndex));

  void updateBottomNavIndex({required int index}) {
    navIndex = index;
    emit(BottomNavBarState(currentIndex: navIndex));
  }
}
