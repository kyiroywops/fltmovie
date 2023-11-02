import 'package:flutt_muvi/config/theme/app_theme.dart';
import 'package:flutt_muvi/config/router/App_Router.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
     theme: AppTheme().themeData,
     routerConfig: appRouter,
      debugShowCheckedModeBanner: false
    );
  }
}