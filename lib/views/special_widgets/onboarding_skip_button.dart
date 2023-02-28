import 'package:ecommerce/views/common_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingSkipButton extends StatefulWidget {
  final PageController controller;
  const OnBoardingSkipButton({super.key, required this.controller});
  @override
  State<OnBoardingSkipButton> createState() => _OnBoardingSkipButtonState();
}

class _OnBoardingSkipButtonState extends State<OnBoardingSkipButton> {
  double position = -1;
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      if(widget.controller.page! > 3){
        setState(() => position = -1.2);
      }else{
        setState(() => position = -1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOutCubic,
      alignment: AlignmentDirectional(1, position),
      child: SafeArea(
        child: InkWell(
          borderRadius: BorderRadius.circular(50.sp),
          onTap: () => widget.controller.jumpToPage(4),
          child: Container(
            margin: EdgeInsets.all(20.sp),
            child: CustomText.createCustomText(
              text: "تخطي",
              align: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall!
            ),
          ),
        ),
      ),
    );
  }
}