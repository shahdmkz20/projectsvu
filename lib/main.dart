import 'package:flutter/material.dart';
import 'package:projectsvu/modules/home/home.dart';

import 'package:intl/intl.dart';
import 'package:projectsvu/shared/Colors/Colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Pathway_Gothic_One',
          primarySwatch: MaterialColor(defaultBluee.value, {
            50: defaultBluee.withOpacity(0.1),
            100: defaultBluee.withOpacity(0.2),
            200: defaultBluee.withOpacity(0.3),
            300: defaultBluee.withOpacity(0.4),
            400: defaultBluee.withOpacity(0.5),
            500: defaultBluee.withOpacity(0.6),
            600: defaultBluee.withOpacity(0.7),
            700: defaultBluee.withOpacity(0.8),
            800: defaultBluee.withOpacity(0.9),
            900: defaultBluee.withOpacity(1.0),
          })),
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
