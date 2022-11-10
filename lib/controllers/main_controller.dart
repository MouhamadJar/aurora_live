import 'package:get/get.dart';

import '../view/splash_screen.dart';

class MainController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 750)).then((value) {
      Get.offAll(() => const SplashScreen());
    });
    super.onInit();
  }
}
