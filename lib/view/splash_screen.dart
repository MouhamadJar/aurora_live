import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

import '../controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var splashScreenController = Get.put(SplashScreenController());
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: RiveAnimation.asset(
          splashScreenController.splashScreens[splashScreenController.index],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
