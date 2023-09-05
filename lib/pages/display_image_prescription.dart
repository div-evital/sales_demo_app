import 'dart:io';

import 'package:flutter/material.dart';

class DisplayImagePrescriptionPage extends StatelessWidget {
  final String imagePath;

  const DisplayImagePrescriptionPage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        automaticallyImplyLeading: false,
        title: const Text(
          "Uploaded Prescription images(s)",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey,
        alignment: Alignment.center,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            imagePath,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              return loadingProgress == null
                  ? child
                  : const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton.small(
            heroTag: 1,
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Icon(Icons.delete),
          ),
          FloatingActionButton.small(
            heroTag: 2,
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
