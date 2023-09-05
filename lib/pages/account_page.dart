import 'package:evital_sales/utils/app_nav_path.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(AppNavPath.salesPage);
          },
          child: const ListTile(
            leading: Icon(Icons.point_of_sale),
            title: Text("Sale"),
          ),
        )
      ],
    );
  }
}
