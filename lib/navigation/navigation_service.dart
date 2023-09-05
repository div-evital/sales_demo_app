import 'package:evital_sales/cubit/bottombar/bottom_cubit.dart';
import 'package:evital_sales/cubit/internet/internet_cubit.dart';
import 'package:evital_sales/cubit/sales/sales_cubit.dart';
import 'package:evital_sales/cubit/sales/sales_view/sales_view_cubit.dart';
import 'package:evital_sales/cubit/search/search_cubit.dart';
import 'package:evital_sales/cubit/splash/spalsh_cubit.dart';
import 'package:evital_sales/pages/home_page.dart';

import 'package:evital_sales/pages/new_product_page.dart';
import 'package:evital_sales/pages/sales_view_page.dart';
import 'package:evital_sales/pages/scanner_page.dart';
import 'package:evital_sales/pages/search_page.dart';
import 'package:evital_sales/pages/splash_page.dart';
import 'package:evital_sales/utils/app_nav_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/sales_page.dart';

class NavigationService {
  static Route<dynamic> onGeneratedRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppNavPath.splashPage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<SplashCubit>(
            create: (context) => SplashCubit(),
            child: const SplashPage(),
          ),
        );

      case AppNavPath.searchPage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<SearchCubit>(
            create: (context) => SearchCubit(),
            child: const SearchPage(),
          ),
        );
      case AppNavPath.homePage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (BuildContext context) => BottomNavBarCubit(),
            child: const HomePage(),
          ),
        );
      case AppNavPath.salesPage:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<InternetCubit>(
                create: (context) => InternetCubit(),
              ),
              BlocProvider<SalesCubit>(
                create: (context) => SalesCubit(),
              ),
            ],
            child: const SalesPage(),
          ),
        );
      case AppNavPath.scannerPage:
        return MaterialPageRoute(
          builder: (_) => const ScannerPage(),
        );
      case AppNavPath.addToNewProductPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const NewProductPage(),
        );
      case AppNavPath.salesViewPage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (BuildContext context) => SalesViewCubit(),
            child: SalesViewPage(
              orderNumber:
                  (settings.arguments as List<String>).elementAt(0).toString(),
              orderId:
                  (settings.arguments as List<String>).elementAt(1).toString(),
            ),
          ),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<MaterialPageRoute> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: const Text("Page not found"),
            ),
          ),
        );
      },
    );
  }
}
