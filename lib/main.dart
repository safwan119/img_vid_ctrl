import 'package:all_practise_code/route/routes.dart';
import 'package:all_practise_code/route/routes_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: AppBarTheme(backgroundColor: Colors.blue,),
        brightness:Brightness.light,
      ),
      initialRoute: RoutesName.videoShowingScreen,
      onGenerateRoute: Routes.createRoutes,
    );
  }
}
