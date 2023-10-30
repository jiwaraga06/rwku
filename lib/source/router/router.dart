import 'package:flutter/material.dart';
import 'package:rwku/source/pages/about.dart';
import 'package:rwku/source/pages/bottomNavBar.dart';
import 'package:rwku/source/pages/home.dart';
import 'package:rwku/source/pages/opening.dart';
import 'package:rwku/source/pages/splash.dart';
import 'package:rwku/source/router/string.dart';

class RouterNavigation {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case webViewScreen:
        return MaterialPageRoute(builder: (context) => WebViewScreen());
      case dashboardScreen:
        return MaterialPageRoute(builder: (context) => Dashboard());
      case homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case aboutScreen:
        return MaterialPageRoute(builder: (context) => AboutScreen());
      
    }
    return null;
  }
}
