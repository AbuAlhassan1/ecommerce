import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce/views/constants/colors.dart' as app;

class IndexIndicator extends StatefulWidget {
  final int length;
  final double size;
  final PageController controller;
  const IndexIndicator({super.key, required this.length, required this.size, required this.controller});
  @override
  State<IndexIndicator> createState() => IindeIindicatorState();
}

class IindeIindicatorState extends State<IndexIndicator> {
  int index = 0;
  double indexIndicatorPosition = 0;
  double indexIndicatorOpacity = 1;
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() => index = widget.controller.page!.round());

      if(widget.controller.page! > widget.length - 1){
        setState(() {
          indexIndicatorPosition = widget.controller.page! - (widget.length - 1);
          indexIndicatorOpacity = 1 - (widget.controller.page! - (widget.length - 1));
          log((1 - (widget.controller.page! - (widget.length - 1))).toString());
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
      duration: const Duration(milliseconds: 10),
      curve: Curves.linear,
      alignment: Alignment(indexIndicatorPosition, 0.85),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 100),
        curve: Curves.linear,
        opacity: indexIndicatorOpacity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            widget.length,
            (i) => Container(
              height: widget.size.sp, width: widget.size.sp,
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              decoration: BoxDecoration(
                color: i == index ? Theme.of(context).colorScheme.primary : app.Colors.offBlue,
                borderRadius: BorderRadius.circular(widget.size * 2)
              ),
            )
          ),
        ),
      ),
    );
  }
}