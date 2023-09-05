import 'package:evital_sales/cubit/splash/spalsh_cubit.dart';
import 'package:evital_sales/cubit/splash/splash_state.dart';
import 'package:evital_sales/utils/app_nav_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Colors.indigo,
        body: BlocListener<SplashCubit, SplashState>(
          listener: (context, state) {
            if (state == SplashState.homeState) {
              Navigator.of(context).pushReplacementNamed(AppNavPath.homePage);
            }
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset(
                    "assets/images/evitalrx-logo.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  "#AbHarPharmacyDigital",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
