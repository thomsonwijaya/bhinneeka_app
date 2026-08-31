import 'package:flutter/material.dart';
import 'theme/app_colors.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const BhinneekaApp());
}

class BhinneekaApp extends StatelessWidget {
  const BhinneekaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bhinneeka Coffee',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
