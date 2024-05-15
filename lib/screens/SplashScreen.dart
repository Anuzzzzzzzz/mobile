import 'package:flutter/material.dart';
import 'package:your_app/dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a loading process using Future.delayed
    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to the dashboard screen after the splash screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Custom background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/app_logo.png', // Replace with your app logo asset
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'Your App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Custom text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
