import 'package:ecommerce/views/common_widgets/custom_text.dart';
import 'package:ecommerce/views/constants/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YouShopWeDeliver extends StatefulWidget {
  const YouShopWeDeliver({super.key});

  @override
  State<YouShopWeDeliver> createState() => _YouShopWeDeliverState();
}

class _YouShopWeDeliverState extends State<YouShopWeDeliver> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/png/deliver.png", fit: BoxFit.contain,),
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
                  text: "التسوق عليك والتوصيل علينا",
                  align: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium!
                ),
                SizedBox(height: 15.h),
                CustomText.createCustomText(
                  text: "وفرنالك خدمة توصيل سريعة ومضمونة مع امكانية متابعة تجهيز طلبك من التطبيق",
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