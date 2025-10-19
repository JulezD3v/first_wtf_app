import 'package:first_wtf_app/bottom_navigation.dart';
import 'package:first_wtf_app/pages/login_page.dart';
import 'package:first_wtf_app/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save A Life',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      debugShowCheckedModeBanner: false, 
      routes: {
        "/": (context)=> OnboardingPage(),
        "/home": (context)=> BottomNavigation(),
        "/login": (context)=> LoginPage()
      },
      initialRoute: "/login",
      // home: BottomNavigation()
    );
  }
}
