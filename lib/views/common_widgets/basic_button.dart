import 'package:ecommerce/views/common_widgets/custom_text.dart';
import 'package:ecommerce/views/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class BasicButton extends StatefulWidget {
  final String text;
  final Function onTap;
  Color textColor = ParadiseColors.mainBlue;
  Color fillColor = Colors.transparent;
  Color borderColor = Colors.transparent;
  double borderThickness = 1;

  BasicButton.withBorder({super.key, required this.borderColor, required this.borderThickness, required this.text, required this.textColor, required this.onTap});
  BasicButton.filled({super.key, required this.fillColor, required this.text, required this.textColor, required this.onTap});

  @override
  State<BasicButton> createState() => _BasicButtonState();
}

class _BasicButtonState extends State<BasicButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          widget.onTap();
        },
        splashColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
        enableFeedback: true,
        splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
        borderRadius: BorderRadius.circular(10.sp),
        child: Container(
          width: MediaQuery.of(context).size.width, height: 50.h,
          decoration: BoxDecoration(
            color: widget.fillColor,
            border: widget.borderColor == Colors.transparent ? null : Border.all(
              color: widget.borderColor,
              width: widget.borderThickness
            ),
            borderRadius: BorderRadius.circular(10.sp)
          ),
          child: Center(
            child: CustomText.createCustomTajawalText(
              text: widget.text,
              color: widget.textColor,
              weight: FontWeight.bold,
              fontSize: 18,
              screenHeight: MediaQuery.of(context).size.height
            ),
          ),
        ),
      ),
    );
  }
}