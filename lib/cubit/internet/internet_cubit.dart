import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:evital_sales/cubit/internet/internet_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetCubit extends Cubit<InternetState> {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription streamSubscription;

  InternetCubit() : super(InternetState.initial) {
    checkInternet();
  }

  void checkInternet() {
    streamSubscription = _connectivity.onConnectivityChanged.listen(
      (event) {
        if (event == ConnectivityResult.wifi) {
          emit(InternetState.enabled);
        } else if (event == ConnectivityResult.mobile) {
          emit(InternetState.enabled);
        } else if (event == ConnectivityResult.none) {
          emit(InternetState.disabled);
        } else {
          emit(InternetState.disabled);
        }
      },
    );
  }

  @override
  Future<void> close() {
    // TODO: implement close
    streamSubscription.cancel();
    return super.close();
  }
}
