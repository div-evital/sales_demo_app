import 'package:evital_sales/utils/app_nav_path.dart';
import 'package:flutter/material.dart';

class ProductSalePage extends StatefulWidget {
  const ProductSalePage({super.key});

  @override
  State<ProductSalePage> createState() => _ProductSalePageState();
}

class _ProductSalePageState extends State<ProductSalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New Sales",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        height: 50,
        color: Colors.indigoAccent.withOpacity(0.2),
        child: ListTile(
          onTap: () => Navigator.of(context).pushNamed(AppNavPath.searchPage),
          leading: const Icon(Icons.search),
          title: const Text(
            "Find medicine here",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
