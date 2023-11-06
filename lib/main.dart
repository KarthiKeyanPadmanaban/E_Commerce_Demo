import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:task1/utils/utils.dart';
import 'package:task1/views/categorylist.dart';
import 'package:task1/views/dashboard.dart';
import 'package:task1/views/login.dart';
import 'package:task1/views/productDetails.dart';
import 'package:task1/views/signup.dart';
import 'package:task1/views/splash.dart';
import 'Home_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Demo-Ecommerce',
      home: SplashScreen(),
    );
  }
}
