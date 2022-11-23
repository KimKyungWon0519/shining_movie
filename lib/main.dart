import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shining_movie/src/core/routes/app_pages.dart';
import 'package:shining_movie/src/core/values/constants.dart';
import 'package:shining_movie/src/core/values/theme.dart';
import 'package:shining_movie/src/dependency_injection.dart' as di;


void main() async {
  di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '영화롭다',
      routerConfig: AppPages.router,
      theme: AppTheme.getLightTheme(),
    );
  }
}
