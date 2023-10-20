import 'package:flutter/material.dart';
import 'package:flutter_travel/pages/main_page.dart';
import 'package:flutter_travel/util/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      debugShowCheckedModeBanner: false,
      theme:  Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      home: const MainPage(),
    );
  }
}
