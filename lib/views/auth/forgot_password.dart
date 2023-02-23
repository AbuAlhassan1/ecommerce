import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/views/constants/constraints.dart';
import 'package:ecommerce/views/common_widgets/rounded_button.dart';
import 'package:ecommerce/views/common_widgets/textfield_with_lable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {

    // Variables -- S t a r t --
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Variables -- E n d --

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            AdaptiveTheme.of(context).toggleThemeMode();
          },
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Constraints.horizontalPagePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
        
              // Page Title -- S t a r t --
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Forgot Password", style: Theme.of(context).textTheme.headlineLarge)
                    ],
                  ),
                )
              ),
              // Page Title -- E n d --
        
              // Page Content -- S t a r t --
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              
                  // Email TextField -- S t a r t --
                  const TextFieldWithLable(lable: "Email"),
                  // Email TextField -- E n d --

                  SizedBox(height: 20.h),

                  // Signup Button -- S t a r t --
                  RoundedButton(
                    color: Theme.of(context).colorScheme.primary,
                    text: "Login",
                  ),
                  // Signup Button -- E n d --
                ],
              ),
              // Page Content -- E n d --
        
              // Page Footer -- S t a r t --
              const Expanded(
                child: SizedBox()
              ),
              // Page Footer -- E n d --
        
        
            ],
          ),
        ),
      ),
    );
  }
}