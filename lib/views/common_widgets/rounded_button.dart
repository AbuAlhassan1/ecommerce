import 'package:ecommerce/views/common_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedButton extends StatefulWidget {
  const RoundedButton({super.key, required this.color, required this.text});
  final Color color;
  final String text;
  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {

    // Variables -- S t a r t --
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    // Variables -- E n d --

    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.h),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(100.sp),
        boxShadow: [
          BoxShadow(
            color: widget.color.withOpacity(0.5),
            blurRadius: 5,
            spreadRadius: 0,
            offset: const Offset(0, 3)
          )
        ]
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 3.h),
          child: CustomText.createCustomTajawalText(
            text: widget.text,
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 18,
            screenHeight: height,
            weight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}