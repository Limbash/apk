// ignore_for_file: must_be_immutable

import 'package:apk/components/my_button.dart';
import 'package:apk/components/my_textfield.dart';
import 'package:apk/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  // login method
  void login() {
    /*

      fill out the authentication here

    */

    // then navigate to home page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App icon or logo
            Icon(
              Icons.person,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            // Message or app slogan
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            // Email textfield
            MyTextfield(
              controller: emailController,
              obscureText: false,
              hintText: "Email",
            ),
            const SizedBox(
              height: 10,
            ),

            // Password textfield
            MyTextfield(
              controller: passwordController,
              obscureText: true,
              hintText: "Password",
            ),
            const SizedBox(
              height: 10,
            ),

            // Login button
            MyButton(
              text: "Sign In",
              onTap: () => login(),
            ),
            const SizedBox(
              height: 25,
            ),

            // Not registered? sign up now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Not a registered?
                Text(
                  "Not Registered?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 5,
                ),
                // Sign up here
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
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
