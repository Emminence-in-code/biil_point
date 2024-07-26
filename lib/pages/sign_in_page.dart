import 'package:biil_point/widgets/app_butttons.dart';
import 'package:biil_point/widgets/app_large_text.dart';
import 'package:biil_point/widgets/app_small_text.dart';
import 'package:biil_point/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isvisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_circle_left_outlined)),
                const SizedBox(
                  width: 120,
                ),
                const Text('Login'),
              ],
            ),
            const SizedBox(height: 90),
            const AppLargeText(text: 'Welcome Back!'),
            const AppSmallText(text: 'Sign in to your account to continue', alignCenter: false,),
            const SizedBox(
              height: 100,
            ),
            CustomTextField(
                controller: emailController,
                hintText: 'Email',
                icon: const Icon(Icons.attach_email_outlined),
                isPassword: false),
            const SizedBox(height: 20),
            CustomTextField(
                controller: passwordController,
                hintText: 'Password',
                icon: const Icon(Icons.password_rounded),
                isPassword: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: const Text('Forgot Password?'),
                )
              ],
            ),
            const SizedBox(height: 100),
            AppButton(text: 'Continue',textColor:  Colors.white,backgroundColor:  Colors.orange, onTap: (){},),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                GestureDetector(
                  child: const Text(
                    'Sign up here',
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
