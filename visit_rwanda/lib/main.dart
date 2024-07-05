import 'package:flutter/material.dart';
import 'package:visit_rwanda/login.dart';
import 'package:visit_rwanda/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Visit Rwanda',
      home: VisitRwandaScreen(),
    );
  }
}

class VisitRwandaScreen extends StatelessWidget {
  const VisitRwandaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: GestureDetector(
        onTap: () {
          // Navigate to the next screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NextScreen()),
          );
        },
        child: const Center(
          child: Text(
            'Visit Rwanda',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Visit Rwanda',
              style: TextStyle(
                color: Colors.white,
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 33.0),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/drum_man.png',
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 400.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                          // Implement login functionality
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 140.0, vertical: 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                          shadowColor: Colors.transparent,
                          elevation: 2.0,
                        ),
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                            // Navigate to the next screen
                          );
                          // Implement sign-up functionality
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 130.0, vertical: 16.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: const BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              )),
                          shadowColor: Colors.transparent,
                          elevation: 2.0,
                        ),
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            const Text(
              'Plan Your Outdoor Trips',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
