import 'dart:developer';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/views/auth/login.dart';
import 'package:ecommerce/views/constants/theme.dart';
import 'package:ecommerce/views/welcome/welcome_pages_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// Use This Command To Generate Transitions
// flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations" -o "locale_keys.g.dart" -f keys

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  log("asdasdasd");
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ar', ''),
        Locale('en', ''),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar', ''),
      startLocale: const Locale('ar', ''),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = GoRouter(
    initialLocation: '/welcome',
    routes: [
      GoRoute(
        path: '/welcome',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const WelcomePagesWrapper()
        ),
        routes: [
          GoRoute(
            path: 'login',
            pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              child: const Login()
            ),
          ),
          GoRoute(
            path: 'signup',
            pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              child: const Scaffold()
            ),
          ),
        ]
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      )
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(400, 860),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => AdaptiveTheme(
        light: Themes.lightTheme,
        dark: Themes.darkTheme,
        initial: AdaptiveThemeMode.light,
        builder: (light, dark) => MaterialApp.router(
          theme: light,
          darkTheme: dark,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routerConfig: router,
        ),
      ),
    );
  }
}