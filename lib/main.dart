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
      //initial route is first screen showing on our app
      initialRoute: RoutesName.videoShowingScreen,
      // on generate route have the path where we created all routes
      onGenerateRoute: Routes.createRoutes,
    );
  }
}
