import 'package:ecommerce/views/constants/constraints.dart';
import 'package:ecommerce/views/common_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWithLable extends StatefulWidget {
  const TextFieldWithLable({super.key, required this.lable});
  final String lable;
  @override
  State<TextFieldWithLable> createState() => _TextFieldWithLableState();
}

class _TextFieldWithLableState extends State<TextFieldWithLable> {
  @override
  Widget build(BuildContext context) {

    // Variables -- S t a r t --
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Variables -- E n d --

    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: Constraints.horizontalPagePadding),
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(Constraints.mainTextFieldRadius)
      ),
      child: TextField(
        style: Theme.of(context).textTheme.displayMedium,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 18.h),
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,

          label: Text(
            widget.lable,
            style: Theme.of(context).textTheme.labelMedium,
          )
        ),
      ),
    );
  }
}