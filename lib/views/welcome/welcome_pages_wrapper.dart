import 'dart:developer';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/views/welcome/many_stores_many_options.dart';
import 'package:ecommerce/views/welcome/more_availability_more_fun.dart';
import 'package:ecommerce/views/welcome/paradise_your_first_choice.dart';
import 'package:ecommerce/views/welcome/you_shop_we_deliver.dart';
import 'package:flutter/material.dart';

class WelcomePagesWrapper extends StatefulWidget {
  const WelcomePagesWrapper({super.key});

  @override
  State<WelcomePagesWrapper> createState() => _WelcomePagesWrapperState();
}

class _WelcomePagesWrapperState extends State<WelcomePagesWrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          ParadiseYourFirstChoice(),
          ManyStoresManyOptions(),
          MoreAvailabilityMoreFun(),
          YouShopWeDeliver(),
        ],
      ),
    );
  }
}