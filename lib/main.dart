import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// With Flutter, you create user interfaces by combining "widgets"
// You'll learn all about them (and much more) throughout this course!
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Every custom widget must have a build() method
  // It tells Flutter, which widgets make up your custom widget
  // Again: You'll learn all about that throughout the course!
  @override
  Widget build(BuildContext context) {
    // Below, a bunch of built-in widgets are used (provided by Flutter)
    // They will be explained in the next sections
    // In this course, you will, of course, not just use them a lot but
    // also learn about many other widgets!
    return MaterialApp(
      title: 'HQ Flutter App',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: HQAppBar(
          title: const Text(
            'Welcome to Flutter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: GradientContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Flutter - The Complete Guide',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Learn Flutter step-by-step, from the ground up.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HQAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  const HQAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      // The flexibleSpace property allows you to put a widget behind the AppBar content
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Color.fromARGB(255, 6, 49, 8), Color.fromARGB(255, 6, 71, 18)],
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(185, 27, 27, 27),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
      ),
    );
  }
}

class GradientContainer extends StatelessWidget {
  final Widget child;

  const GradientContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 18, 70, 20),
            Color.fromARGB(179, 218, 11, 11),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.7, 1.0],
        ),
      ),
      child: child,
    );
  }
}
