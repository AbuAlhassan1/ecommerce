import 'package:ecommerce/views/common_widgets/custom_text.dart';
import 'package:ecommerce/views/constants/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManyStoresManyOptions extends StatefulWidget {
  const ManyStoresManyOptions({super.key});

  @override
  State<ManyStoresManyOptions> createState() => _ManyStoresManyOptionsState();
}

class _ManyStoresManyOptionsState extends State<ManyStoresManyOptions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/png/stores.png", fit: BoxFit.contain,),
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
                  text: "المتاجر هواية والخيارات اكثر!",
                  align: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium!
                ),
                SizedBox(height: 15.h),
                CustomText.createCustomText(
                  text: "تمتع بالتسوق مع عدد كبير من المتاجر بمختلف الاصناف والمنتجات المميزة",
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