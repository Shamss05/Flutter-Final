import 'package:flutter/material.dart';
import 'package:final_project/components/bottom_navigation_bar.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CustomBottomNavigationBar(),
    );
  }
}
