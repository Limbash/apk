import 'package:apk/components/my_button.dart';
import 'package:apk/components/my_textfield.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final void Function()? onTap;
  SignUpPage({super.key, required this.onTap});

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon or business Logo
            Icon(
              Icons.person,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),

            // Slogan or business message
            const Text("Let's create an account for you"),
            const SizedBox(
              height: 25,
            ),

            // email textfield
            MyTextfield(
              controller: emailController,
              obscureText: false,
              hintText: "Email address",
            ),
            const SizedBox(
              height: 10,
            ),

            // password textfield
            MyTextfield(
              controller: passwordController,
              obscureText: true,
              hintText: "Password",
            ),
            const SizedBox(
              height: 10,
            ),

            // confirm password textfield
            MyTextfield(
              controller: confirmPasswordController,
              obscureText: true,
              hintText: "Confirm Password",
            ),
            const SizedBox(
              height: 10,
            ),

            // sign up button
            MyButton(text: "Sign Up", onTap: () {}),
            const SizedBox(
              height: 25,
            ),

            // Already have an account? Sign in
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Not a registered?
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 5,
                ),
                // Sign up here
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Sign In",
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
