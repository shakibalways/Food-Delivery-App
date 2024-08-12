import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class Login extends StatefulWidget {
  final void Function()? onTap;
  const Login({super.key,required this.onTap});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
              "Food Delivery App",
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
            //sign in button
            const SizedBox(
              height: 40,
            ),
            MyButton(
              onTap: () {},
              text: "Login",
            ),
            //not a member?register now
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "not a member?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "register now",
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
