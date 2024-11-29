import 'package:flutter/material.dart';

import 'features/home/presentation/home_screen.dart';
import 'features/splash/presentation/views/splash_screen.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatefulWidget {
  const Bookly({super.key});

  @override
  State<Bookly> createState() => _BooklyState();
}

class _BooklyState extends State<Bookly> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"home": (context) => const HomeScreen()},
      theme: ThemeData.dark(),
      home: const SplashScreen(),
    );
  }
}
