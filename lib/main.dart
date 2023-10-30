import 'package:flutter/material.dart';
import 'package:rwku/source/router/router.dart';

void main() {
  runApp(MyApp(router: RouterNavigation()));
}

class MyApp extends StatelessWidget {
  final RouterNavigation? router;
  const MyApp({super.key, this.router});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
        useMaterial3: true,
      ),
      onGenerateRoute: router!.generateRoute,
    );
  }
}
