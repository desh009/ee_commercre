import 'package:ee_commercre/feature/auth/ui/screens/login_screen.dart';
import 'package:ee_commercre/feature/auth/ui/screens/sign_up_screen.dart';
import 'package:ee_commercre/feature/auth/ui/screens/splash_screen.dart';
import 'package:ee_commercre/feature/common/ui/screen/main_bottom_nav_screen.dart';
import 'package:ee_commercre/feature/product/ui/screens/product_details_screen.dart';
import 'package:ee_commercre/feature/product/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> getroute(RouteSettings settings) {
    late final Widget screenwidget;

    if (settings.name == SplashScreen.name) {
      screenwidget = const SplashScreen();
    } else if (settings.name == LoginScreen.name) {
      screenwidget = LoginScreen();
    } else if (settings.name == SignUpScreen.name) {
      screenwidget = SignUpScreen();
    } else if (settings.name == MainBottomNavScreen.name) {
      screenwidget = MainBottomNavScreen();
    } else if (settings.name == ProductListScreen.routeName) {
      final String category = settings.arguments as String;
      screenwidget = ProductListScreen(category: category,);
    } else if (settings.name == ProductDetailsScreen.name) {
      final String productId = settings.arguments as String;
      screenwidget = ProductDetailsScreen(productId: productId,);
    }
   
    return MaterialPageRoute(builder: (context) => screenwidget);
  }
}
