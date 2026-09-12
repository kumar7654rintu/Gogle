import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GoogleScreen(),
    );
  }
}

class GoogleScreen extends StatelessWidget {
  const GoogleScreen({super.key});

  Future<void> openGoogle() async {
    final Uri url = Uri.parse('https://www.google.com');

    try {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    } catch (e) {
      debugPrint('Google open nahi hua: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          onPressed: openGoogle,
          child: const Text(
            'Open Google',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}