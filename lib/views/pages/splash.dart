import 'dart:async';

import 'package:app/routes/app_routes.dart';
import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
// import 'package:go_router/go_router.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:moto_ng/routes/app_routes.dart';

// import '../../utils/color_lib.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Force the app to be displayed in full screen
  hideUIOverlay() =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  // Exit Full Screen
  showUIOverlay() => SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: SystemUiOverlay.values);

  // Timer to move away from the splash page
  Future initialize() async => Timer(
        const Duration(seconds: 5),
        () async =>
            GoRouter.of(context).pushReplacementNamed(AppRoutes.onboard),
      );

  @override
  void initState() {
    hideUIOverlay();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorLib.kPrimary,
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage("assets/images/image 1.png"),
          //       opacity: 0.6,
          //       fit: BoxFit.cover),
          // ),
          child: Center(
            child: Image.asset("assets/images/logo.png"),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    showUIOverlay();
    super.dispose();
  }
}
