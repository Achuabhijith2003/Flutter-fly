import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    bool value = false;
    var username;
    var password;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Column(
          children: [
            const Text("Welcome Back"),
            const Text("\tLogin to your Account",
                style: TextStyle(fontWeight: FontWeight.w900)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: username,
                decoration: const InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: password,
                decoration: const InputDecoration(
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)))),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text("Remember me"),
                ),
                Checkbox(
                  value: value,
                  onChanged: (value) {
                    setState(() {
                      value = value;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: TextButton(
                      onPressed: () {}, child: const Text("Forgot Password?")),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
              child: const Text("Login"),
            ),
            SignInButton(
              Buttons.Google,
              text: "Sign up with Google",
              onPressed: () {},
            )
          ],
        ),
      )),
    );
  }
}
