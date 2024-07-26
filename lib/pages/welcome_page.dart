import 'package:biil_point/utills/route.dart';
import 'package:biil_point/widgets/widgets.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({
    super.key,
  });
  final router = RouterClass();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            const AppLargeText(text: 'Bill Wave'),
            const SizedBox(height: 30),
            const AppLargeText(text: 'Welcome to Bill Wave'),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              child: AppSmallText(
                alignCenter: true,
                text:
                    'Join the Bill Wave community today and discover a smarter way to manage your bills. To join us, please sign in to your account or create a new one',
              ),
            ),
            const SizedBox(height: 50),
            AppButton(
                onTap: () {
                  router.router.go('/signup');
                },
                text: 'Create a new account',
                textColor: Colors.white,
                backgroundColor: Colors.orange),
            const SizedBox(height: 20),
            AppButton(
                onTap: () {},
                text: 'Sign in',
                textColor: Colors.orange,
                backgroundColor: Colors.white),
            const SizedBox(height: 80),
            const SizedBox(
              child: AppSmallText(
                alignCenter: true,
                text:
                    'By Choosing to join us, you agree to our terms and conditions. Learn more about how we process your data in our Privacy Policy  ',
              ),
            )
          ],
        ),
      ),
    );
  }
}
