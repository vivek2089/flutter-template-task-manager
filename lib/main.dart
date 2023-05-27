import 'package:flutter/material.dart';

import 'config.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager',
      theme: ThemeData(
          fontFamily: "Nunito",
          appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.white10,
          ),
          textTheme: Typography.blackMountainView.copyWith(
            headlineSmall: const TextStyle(
              fontSize: 30,
              color: MyColors.black,
              fontWeight: FontWeight.w900,
            ),
            titleLarge: const TextStyle(
              fontSize: 22,
              color: Colors.black38,
              fontWeight: FontWeight.w700,
              letterSpacing: 0,
            ),
            titleMedium: const TextStyle(
              fontSize: 22,
              color: MyColors.black,
              fontWeight: FontWeight.bold,
            ),
            bodyLarge: const TextStyle(
              fontSize: 18,
              color: Colors.black38,
              fontWeight: FontWeight.w600,
            ),
            bodyMedium: const TextStyle(
              fontSize: 18,
              color: MyColors.gray,
              fontWeight: FontWeight.w500,
            ),
            bodySmall: const TextStyle(
              fontSize: 20,
              color: Colors.black38,
              fontWeight: FontWeight.w700,
              letterSpacing: 0,
            ),
            labelLarge: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
            titleSmall: const TextStyle(
              fontSize: 18,
              color: MyColors.gray,
              fontWeight: FontWeight.w600,
              letterSpacing: 0,
            ),
            labelSmall: const TextStyle(
              fontSize: 18,
              color: Colors.black38,
              fontWeight: FontWeight.w700,
              letterSpacing: 0,
            ),
          ),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
              .copyWith(secondary: MyColors.mustard)),
      home: const HomeScreen(),
    );
  }
}
