import 'package:flutter/material.dart';

class ErrorTextWidget extends StatelessWidget {
  final String errorMessage;

  const ErrorTextWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        label: Text(errorMessage),
      ),
    );
  }
}
