import 'package:buffalo_travel/screens/home.dart';
import 'package:buffalo_travel/splash.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 3)); // Delay for 3 seconds
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buffalo Attractions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 1)), // Same delay
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const MyHomePage(); // Replace with your main app screen
          } else {
            return SplashScreen();
          }
        },
      ),
    );
  }
}
