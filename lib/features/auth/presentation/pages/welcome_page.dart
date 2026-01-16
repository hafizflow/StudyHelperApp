import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Study Smarter, Not Harder.',
              style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
            ),
            const SizedBox(height: 60),
            Image.asset('assets/images/robot.png'),
            const Text(
              'Let\'s Get Started!',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            Text(
              'Sign Up with Email',
              style: TextStyle(fontSize: 14, color: Colors.grey.shade400),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  context.go('/sign-up');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB8A4E8),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                icon: Image.asset('assets/images/google.png'),
                label: const Text('Continue with Gmail'),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  context.go('/sign-up');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFD700),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                icon: Image.asset('assets/images/apple.png'),
                label: const Text('Continue with Apple'),
              ),
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {
                context.go('/login');
              },
              child: const Text(
                'I already have an account?',
                style: TextStyle(color: Color(0xFFB8A4E8)),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'By signing up, you agree to the Terms and Conditions\nand the Privacy Policy of My Study Buddy App',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
            ),
          ],
        ),
      ),
    );
  }
}
