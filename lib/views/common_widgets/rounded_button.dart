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
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h),
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
        child: Text(widget.text, style: Theme.of(context).textTheme.displayMedium,),
      ),
    );
  }
}