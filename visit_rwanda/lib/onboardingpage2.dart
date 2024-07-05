import 'package:flutter/material.dart';
import 'package:visit_rwanda/explore_page.dart';
import 'package:visit_rwanda/onboardingpage3.dart';

class OnboardingPage2 extends StatefulWidget {
  const OnboardingPage2({super.key});

  @override
  _OnboardingPage1State createState() => _OnboardingPage1State();
}

class _OnboardingPage1State extends State<OnboardingPage2> {
  final _navigator = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _navigator.currentState?.push(
          MaterialPageRoute(
            builder: (context) => const OnboardingPage2(),
          ),
        );
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/images/onboarding_backround2.png',
                fit: BoxFit.cover,
              ),
            ),

            // Overlay gradient
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.2),
                      Colors.black.withOpacity(0.2),
                    ],
                  ),
                ),
              ),
            ),

            // Content
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Discover the beauty\nof Rwanda',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Explore the natural wonders,\nculture, and adventure of Rwanda.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OnboardingPage3()),
                            // Navigate to the next screen
                          );
                          // Implement sign-up functionality

                          // Handle Skip button press
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                            // Navigate to the next screen
                          );
                          // Implement sign-up functionality

                          // Handle Get Started button press
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32.0,
                            vertical: 16.0,
                          ),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
