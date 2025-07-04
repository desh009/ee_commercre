import 'package:ee_commercre/app/app_routes.dart';
import 'package:ee_commercre/app/app_theme.dart';
import 'package:ee_commercre/app/controller_binder.dart';
import 'package:ee_commercre/feature/auth/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CraftyBay extends StatefulWidget {
  const CraftyBay({super.key});

  @override
  State<CraftyBay> createState() => _CraftyBayState();
}

class _CraftyBayState extends State<CraftyBay> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: SplashScreen.name,
      theme: AppTheme.lightThemeData,
      onGenerateRoute: AppRoutes.getroute,
      initialBinding: ControllerBinder(),
    );
  }
}
