import 'package:evital_sales/api/repository.dart';
import 'package:evital_sales/cubit/sales/sales_view/sales_view_state.dart';
import 'package:evital_sales/model/view_model/sales_view_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SalesViewCubit extends Cubit<SalesViewState> {
  SalesViewCubit() : super(SalesViewInitialState());
  SalesViewEntity _salesViewEntity = SalesViewEntity();

  Future<void> callSalesViewApiRequest({required String orderId}) async {
    emit(SalesViewLoadingState());
    _salesViewEntity =
        await Repository().sendPostSalesViewRequest(orderId: orderId);

    if (_salesViewEntity.statusCode == "1") {
      emit(SalesViewSuccessState(salesViewEntity: _salesViewEntity));
    } else if (_salesViewEntity.statusCode == "0") {}
  }
}
