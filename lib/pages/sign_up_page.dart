import 'package:biil_point/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:biil_point/widgets/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_circle_left_outlined)),
              const SizedBox(
                height: 150,
              ),
              AppLargeText(
                color: Colors.orange.shade900,
                text: 'Get Started',
              ),
              const AppSmallText(alignCenter: true,
                  text:
                      'Take the first step towards simplified billing, Create an account with us.'),
              const SizedBox(
                height: 50,
              ),
              CustomTextField(
                  controller: fNameController,
                  hintText: 'First Name',
                  icon: const Icon(Icons.person_3_outlined),
                  isPassword: false),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  controller: lNameController,
                  hintText: 'Last Name',
                  icon: const Icon(Icons.person_3_outlined),
                  isPassword: false),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  controller: emailController,
                  hintText: 'Email',
                  icon: const Icon(Icons.attach_email_outlined),
                  isPassword: false),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  icon: const Icon(Icons.password_rounded),
                  isPassword: true),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  controller: confirmPassController,
                  hintText: 'Confirm Password',
                  icon: const Icon(Icons.password_rounded),
                  isPassword: false),
              const SizedBox(
                height: 50,
              ),
              AppButton(
                onTap: (){},
                text:'Continue',textColor: Colors.white,backgroundColor: Colors.orange)
            ],
          ),
        ));
  }
}
