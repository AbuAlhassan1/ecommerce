import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class TextFieldShapeOne extends StatefulWidget {
  const TextFieldShapeOne({super.key});

  @override
  State<TextFieldShapeOne> createState() => _TextFieldShapeOneState();
}

class _TextFieldShapeOneState extends State<TextFieldShapeOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h, width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: Colors.transparent,
              child: SvgPicture.asset('assets/svg/google_icon.svg', color: Colors.black),
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: const TextField(),
            ),
          )
        ],
      ),
    );
  }
}