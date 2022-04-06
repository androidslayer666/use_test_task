

import 'package:flutter/material.dart';
import 'package:test_apps/app/theme/theme_data.dart';

import '../presentation/main_screen/main_screen.dart';

class UseApp extends StatelessWidget {
  const UseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: const MainScreen(),
    );
  }
}
