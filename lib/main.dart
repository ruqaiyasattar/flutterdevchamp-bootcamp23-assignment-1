import 'package:flutter/material.dart';
import 'package:medicoz/Screens/HomeScreen.dart';
import 'package:medicoz/Screens/LoginScreen.dart';
import 'package:medicoz/Screens/MedicineScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'My App',
      home: const SplashScreen(),
      routes: {
        '/home': (_) => const HomeScreen(),
        '/login': (_) => LoginScreen(),
        '/medicine': (_) => const MedicineScreen(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff08022A),
      body: Center(
        child: Hero(
          tag: 'logo',
          child: Image.asset('asset/images/splashmed.png'),
        ),
      ),
    );
  }
}
