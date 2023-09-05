import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final String? displayMessage;

  const EmptyWidget({super.key, this.displayMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        label: Text(displayMessage ?? "Not found"),
      ),
    );
  }
}
