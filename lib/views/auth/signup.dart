import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/views/constants/constraints.dart';
import 'package:ecommerce/views/common_widgets/rounded_button.dart';
import 'package:ecommerce/views/common_widgets/textfield_with_lable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupWrapper extends StatefulWidget {
  const SignupWrapper({super.key});

  @override
  State<SignupWrapper> createState() => _SignupWrapperState();
}

class _SignupWrapperState extends State<SignupWrapper> {
  @override
  Widget build(BuildContext context) {

    // Variables -- S t a r t --
    double height = MediaQuery.of(context).size.height;
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
                      Text("Sign up", style: Theme.of(context).textTheme.headlineLarge)
                    ],
                  ),
                )
              ),
              // Page Title -- E n d --
        
              // Page Content -- S t a r t --
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Name TextField -- S t a r t --
                  const TextFieldWithLable(lable: "Name"),
                  // Name TextField -- E n d --
              
                  // Email TextField -- S t a r t --
                  const TextFieldWithLable(lable: "Email"),
                  // Email TextField -- E n d --
              
                  // Password TextField -- S t a r t --
                  const TextFieldWithLable(lable: "Password"),
                  // Password TextField -- E n d --

                  // Go To Login Link -- S t a r t --
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, bottom: 25.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Already have an account?", style: Theme.of(context).textTheme.displaySmall),
                        SizedBox(width: 10.w),
                        SvgPicture.asset(
                          context.locale.languageCode == "en" ? "assets/svg/arrow-right.svg" : "assets/svg/arrow-left.svg",
                          color: Theme.of(context).colorScheme.primary,
                          height: 20.sp, width: 20.sp,
                        )
                      ],
                    ),
                  ),
                  // Go To Login Link -- E n d --

                  // Signup Button -- S t a r t --
                  RoundedButton(
                    color: Theme.of(context).colorScheme.primary,
                    text: "Sign up",
                  ),
                  // Signup Button -- E n d --
                ],
              ),
              // Page Content -- E n d --
        
              // Page Footer -- S t a r t --
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Social Auth -- S t a r t --
                    Text(
                      "Or sign up with social account",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                
                    SizedBox(height: 15.h),
                
                    SizedBox(
                      width: width/2, height: 70.h,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              padding: EdgeInsets.all(22.sp),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(25.sp)
                              ),
                              child: SvgPicture.asset("assets/svg/google_icon.svg"),
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              padding: EdgeInsets.all(22.sp),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(25.sp)
                              ),
                              child: SvgPicture.asset("assets/svg/facebook_icon.svg"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Social Auth -- E n d --
                
                    SizedBox(height: 30.h),
                  ],
                )
              ),
              // Page Footer -- E n d --
        
        
            ],
          ),
        ),
      ),
    );
  }
}