import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class Register extends StatefulWidget {
  final void Function()? onTap;
  const Register({super.key, this.onTap});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 15,
            ),
            //message, slogan
            Text(
              "Create New Account",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            //email texFlied
            const SizedBox(
              height: 25,
            ),
            MyTextfield(
              controller: emailController,
              hintText: "email",
              obscureText: false,
            ),
            //password textFlied
            const SizedBox(
              height: 25,
            ),
            MyTextfield(
                controller: passwordController,
                hintText: "password",
                obscureText: true),
            const SizedBox(
              height: 25,
            ),
            // confirm password
            MyTextfield(
                controller: confirmPasswordController,
                hintText: "Confirm password",
                obscureText: true),

            //sign un button
            const SizedBox(
              height: 40,
            ),
            MyButton(
              onTap: () {},
              text: "Sign Up",
            ),
            const SizedBox(
              height: 25,
            ),
            //already have an account?register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "already have an account?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login here",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
