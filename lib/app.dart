import 'package:flutter/material.dart';
import 'package:social_media_dashboard/dashboard/views/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social DashBoard App',
      theme: ThemeData(fontFamily: 'Inter'),
      home: const HomePage(),
    );
  }
}
