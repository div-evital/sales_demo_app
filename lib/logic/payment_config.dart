import 'package:evital_sales/model/payment_model.dart';

class PaymentMode {
  static PaymentModel setUpPaymentIconAndMethod(
      {required List paymentMethods, required int paymentStatus}) {
    PaymentModel paymentModel = PaymentModel();

    for (var data in paymentMethods) {
      if (data.id == paymentStatus) {
        paymentModel = PaymentModel(
            paymentMethodName: data.methodName, paymentIconUrl: data.imageUrl);
      }
    }
    return paymentModel;
  }
}
