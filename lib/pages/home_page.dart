import 'package:evital_sales/cubit/bottombar/bottom_cubit.dart';
import 'package:evital_sales/cubit/bottombar/bottom_state.dart';
import 'package:evital_sales/pages/account_page.dart';
import 'package:evital_sales/pages/dashboard_page.dart';
import 'package:evital_sales/pages/purchase_page.dart';
import 'package:evital_sales/pages/product_sale_page.dart';
import 'package:evital_sales/utils/app_nav_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/bottombar/bottom_navbar_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> homeWidgets = [];
  DateTime _currentTime = DateTime.now();
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeWidgets = [
      const DashboardPage(),
      const SizedBox(),
      const PurchasePage(),
      const AccountPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: setOnWillPopScope,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.account_circle,
            color: Colors.indigo,
            size: 35,
          ),
          automaticallyImplyLeading: false,
          title: const Text(
            "Demo Pharmacy Ahmedabad",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          titleSpacing: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: BlocConsumer<BottomNavBarCubit, BottomNavBarState>(
          listener: (context, state) {
            if (state.currentIndex == 1) {
              context.read<BottomNavBarCubit>().updateBottomNavIndex(index: 0);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProductSalePage(),
                ),
              );
            }
          },
          builder: (context, state) {
            return homeWidgets.elementAt(state.currentIndex);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              Navigator.of(context).pushNamed(AppNavPath.scannerPage),
          child: const Icon(
            Icons.qr_code_scanner,
          ),
        ),
        bottomNavigationBar:
            BlocSelector<BottomNavBarCubit, BottomNavBarState, int>(
          selector: (state) => state.currentIndex,
          builder: (context, state) {
            return BottomNavigationBar(
              currentIndex: state,
              onTap: (value) {
                context
                    .read<BottomNavBarCubit>()
                    .updateBottomNavIndex(index: value);
              },
              type: BottomNavigationBarType.fixed,
              unselectedFontSize: 12,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedFontSize: 14,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.indigo,
              items: List<BottomNavigationBarItem>.generate(
                BottomNavBarModel.getBottomNavBarList.length,
                (index) {
                  BottomNavBarModel model =
                      BottomNavBarModel.getBottomNavBarList.elementAt(index);
                  return BottomNavigationBarItem(
                    icon: Icon(model.icons),
                    label: model.labelName,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  //Asking confirm app exit or not from UserSide.
  Future<bool> setOnWillPopScope() async {
    if (BottomNavBarCubit.navIndex != 0) {
      context.read<BottomNavBarCubit>().updateBottomNavIndex(index: 0);
    } else {
      final userPressTime = DateTime.now().difference(_currentTime);
      _currentTime = DateTime.now();
      final canExit = userPressTime >= const Duration(seconds: 2);
      canExit
          ? ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  "Please back again to exit ",
                ),
                behavior: SnackBarBehavior.floating,
              ),
            )
          : await SystemNavigator.pop();
    }

    return false;
  }
}
