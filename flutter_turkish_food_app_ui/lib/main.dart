import 'package:flutter/material.dart';
import 'package:flutter_turkish_food_app_ui/pages/first_page.dart';
import 'package:flutter_turkish_food_app_ui/pages/order_page.dart';
import 'package:flutter_turkish_food_app_ui/product/util/custom_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foot App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: ProjectColor().backgroundColor,
        ),
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),
    );
  }
}
