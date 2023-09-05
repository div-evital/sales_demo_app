import 'package:cached_network_image/cached_network_image.dart';
import 'package:evital_sales/logic/payment_config.dart';
import 'package:evital_sales/model/api_response_entity.dart';
import 'package:evital_sales/utils/app_nav_path.dart';
import 'package:evital_sales/utils/custom_date_generator.dart';
import 'package:flutter/material.dart';

class CustomSalesWidget extends StatelessWidget {
  final List<ApiResponseDataPaymentMethods> paymentMethods;
  final ApiResponseDataResults results;

  const CustomSalesWidget({
    super.key,
    required this.results,
    required this.paymentMethods,
  });

  @override
  Widget build(BuildContext context) {
    final style = DefaultTextStyle.of(context).style;

    return InkWell(
      onTap: () {
        final List<String> data = [
          results.orderNumber ?? "",
          results.id.toString() ?? "",
        ];
        Navigator.of(context)
            .pushNamed(AppNavPath.salesViewPage, arguments: data);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 85,
        padding: const EdgeInsets.only(top: 8, right: 10, left: 10),
        child: Column(
          children: [
            Flexible(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: RichText(
                      text: TextSpan(
                        text: "#${results.orderNumber}",
                        style: const TextStyle(
                          color: Colors.indigo,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                              text: results.billDate != null ? " | " : "",
                              style: TextStyle(
                                  color: Colors.grey.withOpacity(0.5))),
                          TextSpan(
                            text: CustomDateGenerate.convertDateIntoName(
                                date: results.billDate ?? ""),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.end,
                      text: TextSpan(
                        text: "Bill No.",
                        style: style,
                        children: [
                          TextSpan(
                            text: results.billNo ?? "",
                            style: style.copyWith(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(results.patientName ?? ""),
                  Text(
                    "₹ ${double.parse(results.total.toString() ?? "").toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(results.mobile ?? ""),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 15,
                        child: CachedNetworkImage(
                          imageUrl: PaymentMode.setUpPaymentIconAndMethod(
                                      paymentMethods: paymentMethods,
                                      paymentStatus:
                                          results.paymentStatus ?? -1)
                                  .paymentIconUrl ??
                              "",
                          errorWidget: (context, url, error) => const Icon(
                            Icons.image_not_supported_outlined,
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        PaymentMode.setUpPaymentIconAndMethod(
                                    paymentMethods: paymentMethods,
                                    paymentStatus: results.paymentStatus ?? -1)
                                .paymentMethodName ??
                            "NA",
                        style: style.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
