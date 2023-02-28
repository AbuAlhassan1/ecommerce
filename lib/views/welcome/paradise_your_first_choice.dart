import 'package:ecommerce/views/common_widgets/custom_text.dart';
import 'package:ecommerce/views/constants/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParadiseYourFirstChoice extends StatelessWidget {
  const ParadiseYourFirstChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/png/hello.png", fit: BoxFit.contain,),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Constraints.horizontalPagePadding),
            child: Column(
              children: [
                CustomText.createCustomText(
                  text: "بردايس اختيارك الاول",
                  align: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium!
                ),
                SizedBox(height: 15.h),
                CustomText.createCustomText(
                  text: "سجل دخولك وتمتع بأفضل تجربة تسوق في العراق",
                  maxLines: 3,
                  align: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium!
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}