import 'dart:developer';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:ecommerce/views/common_widgets/index_indicator.dart';
import 'package:ecommerce/views/special_widgets/onboarding_skip_button.dart';
import 'package:ecommerce/views/welcome/many_stores_many_options.dart';
import 'package:ecommerce/views/welcome/more_availability_more_fun.dart';
import 'package:ecommerce/views/welcome/paradise_your_first_choice.dart';
import 'package:ecommerce/views/welcome/skip_or_login.dart';
import 'package:ecommerce/views/welcome/you_shop_we_deliver.dart';
import 'package:flutter/material.dart';

class WelcomePagesWrapper extends StatefulWidget {
  const WelcomePagesWrapper({super.key});

  @override
  State<WelcomePagesWrapper> createState() => _WelcomePagesWrapperState();
}

class _WelcomePagesWrapperState extends State<WelcomePagesWrapper> {
  bool isDark = false;
  double indexIndicatorPosition = 0;
  double indexIndicatorOpacity = 1;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if(controller.page! > 3){
        setState(() {
          indexIndicatorPosition = controller.page! - 3;
          indexIndicatorOpacity = 1 - (controller.page! - 3);
        });
      }
    });
  }

  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          log(controller.page.toString());
          if(!isDark){
            AdaptiveTheme.of(context).setLight();
            setState(() => isDark = true);
          }else{
            AdaptiveTheme.of(context).setDark();
            setState(() => isDark = false);
          }
        },
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // Main Content -- S t a r t --
            PageView(
              controller: controller,
              children: const [
                ParadiseYourFirstChoice(),
                ManyStoresManyOptions(),
                MoreAvailabilityMoreFun(),
                YouShopWeDeliver(),
                SkipOrLogin()
              ],
            ),
            // Main Content -- E n d --
      
            // Index Indicator -- S t a r t --
            IndexIndicator(
              length: 4,
              size: 8,
              controller: controller,
            ),
            // Index Indicator -- E n d --
      
            // Skip Button -- S t a r t --
            OnBoardingSkipButton(controller: controller)
            // Skip Button -- E n d --
          ],
        ),
      ),
    );
  }
}