import 'package:ecommerce/views/common_widgets/textfield_shap_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.grey,
              )
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    TextFieldShapeOne()
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}