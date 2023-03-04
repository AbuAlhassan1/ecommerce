import 'package:ecommerce/views/common_widgets/basic_button.dart';
import 'package:ecommerce/views/common_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SkipOrLogin extends StatefulWidget {
  const SkipOrLogin({super.key});

  @override
  State<SkipOrLogin> createState() => _SkipOrLoginState();
}

class _SkipOrLoginState extends State<SkipOrLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/png/Ecommerce campaign-rafiki.png'),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BasicButton.withBorder(
                    onTap: (){},
                    text: "تسوق الان",
                    textColor: Theme.of(context).colorScheme.primary,
                    borderColor: Theme.of(context).colorScheme.primary,
                    borderThickness: 2,
                  ),
                  SizedBox(height: 15.h),
                  BasicButton.filled(
                    onTap: () => context.push('/welcome/login'),
                    fillColor: Theme.of(context).colorScheme.primary,
                    text: 'تسجيل الدخول',
                    textColor: Theme.of(context).colorScheme.background
                  ),
                  SizedBox(
                    height: 55.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText.createCustomText(
                              text: "ليس لديك حساب؟",
                              style: Theme.of(context).textTheme.displaySmall! 
                            ),
                            SizedBox(width: 10.w,),
                            CustomText.createCustomTajawalText(
                              text: "انشاء حساب",
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              screenHeight: MediaQuery.of(context).size.height
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}