import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final bool isEnabled;
  final Color? textColor;
  final String? text;
  final Widget? trailingIcon;
  final TextEditingController controller;
  final TextInputAction? textInputAction;
  final TextInputType textInputType;
  final int? length;
  final TextCapitalization? textCapitalization;

  const CustomTextField(
      {super.key,
      this.label,
      this.trailingIcon,
      required this.isEnabled,
      this.textColor,
      this.textCapitalization,
      this.text,
      required this.controller,
      required this.textInputType,
      this.length,
      this.textInputAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
      child: TextField(
        keyboardType: textInputType,
        maxLength: length,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        controller: controller,
        enabled: isEnabled,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: textColor),
          counterText: "",
          contentPadding: EdgeInsets.zero,
          labelText: label ?? "",
          suffixIcon: trailingIcon,
        ),
      ),
    );
  }
}
