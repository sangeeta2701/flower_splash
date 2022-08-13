import 'package:flutter/material.dart';
import 'package:splash_screen/screens/login_screen.dart';

import '../text_field_input.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _userNameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Bouquet Zone",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.blue,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Register",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: TextInput(
                  lableText: "Username",
                  icon: Icons.person,
                  controller: _userNameController,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: TextInput(
                  lableText: "Email",
                  icon: Icons.email,
                  controller: _emailController,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: TextInput(
                      controller: _passwordController,
                      lableText: "Password",
                      icon: Icons.lock)),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: const Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
