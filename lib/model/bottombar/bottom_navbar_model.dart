import 'package:flutter/material.dart';

class BottomNavBarModel {
  String labelName;
  IconData icons;

  BottomNavBarModel({
    required this.labelName,
    required this.icons,
  });

  static final List<BottomNavBarModel> getBottomNavBarList = [
    BottomNavBarModel(labelName: "Home", icons: Icons.home),
    BottomNavBarModel(labelName: "Sale", icons: Icons.sell_outlined),
    BottomNavBarModel(labelName: "Purchase", icons: Icons.inventory),
    BottomNavBarModel(labelName: "Account", icons: Icons.account_circle),
  ];
}
