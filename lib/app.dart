import 'package:flutter/material.dart';
import 'package:social_media_dashboard/dashboard/views/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social DashBoard App',
      theme: ThemeData(
          fontFamily: 'Inter',
          textTheme: const TextTheme(
              bodyText1: TextStyle(fontWeight: FontWeight.w400),
              bodyText2: TextStyle(fontWeight: FontWeight.w700))),
      home: const HomePage(),
    );
  }
}
