import 'package:ecommerce/views/auth/forgot_password.dart';
import 'package:ecommerce/views/auth/login.dart';
import 'package:ecommerce/views/auth/signup.dart';
import 'package:flutter/material.dart';

class RegisterWrapper extends StatefulWidget {
  const RegisterWrapper({super.key});

  @override
  State<RegisterWrapper> createState() => _RegisterWrapperState();
}

class _RegisterWrapperState extends State<RegisterWrapper> {
  @override
  Widget build(BuildContext context) {

    // Variables -- S t a r t --
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Variables -- E n d --

    return Scaffold(
      body: PageView(
        children: const [
          Signup(),
          Login(),
          ForgotPassword()
        ],
      ),
    );
  }
}