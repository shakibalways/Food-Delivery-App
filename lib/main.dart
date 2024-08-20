import 'package:flutter/material.dart';

import 'package:food_delivery_app/models/restaurant.dart';

import 'package:food_delivery_app/theme/theme_provider.dart';
import 'package:food_delivery_app/views/pages/splash/splash.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // theme provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        // restaurant provider
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
