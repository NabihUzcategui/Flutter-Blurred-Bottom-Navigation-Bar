import 'package:flutter/material.dart';
import 'package:flutter_blurred_bottom_navigation_bar/screens/final_screen.dart';

import 'themes/themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const FinalScreen(),
    );
  }
}
