import 'package:flutter/material.dart';
import 'package:my_first_app/app_controller.dart';
import 'package:my_first_app/home_page.dart';

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
      return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: AppController.instance.isDarkTheme
        ? Brightness.dark
        : Brightness.light
      ),
      home: HomePage()
    );
    });
  }
}