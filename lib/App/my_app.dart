import 'package:flutter/material.dart';
import 'package:nigerquiz/config/theme/theme.dart';
import 'package:nigerquiz/data/static_datas/global.dart';
import 'package:nigerquiz/screens/home_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = new AppTheme();
    return MaterialApp(
        title: appName, theme: appTheme.appTheme, home: const HomeScreen());
  }
}
