import 'package:ecommerce/views/common_widgets/custom_text.dart';
import 'package:ecommerce/views/constants/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreAvailabilityMoreFun extends StatefulWidget {
  const MoreAvailabilityMoreFun({super.key});

  @override
  State<MoreAvailabilityMoreFun> createState() => _MoreAvailabilityMoreFunState();
}

class _MoreAvailabilityMoreFunState extends State<MoreAvailabilityMoreFun> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/png/price.png", fit: BoxFit.contain,),
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
                  text: "توفير اكثر, متعة اكبر",
                  align: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium!
                ),
                SizedBox(height: 15.h),
                CustomText.createCustomText(
                  text: "اطلب المنتج الي تريدة وتمتع بتخفيضات وعروض تفوق الخيال",
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