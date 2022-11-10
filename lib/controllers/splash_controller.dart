import 'package:get/get.dart';
import 'dart:math';

import '../view/channels_page.dart';

class SplashScreenController extends GetxController {
  late int index;

  List<String> splashScreens = [
    'assets/blog-bot.riv',
    'assets/character-controller.riv',
    'assets/cup-walk.riv',
    'assets/custom-mouse-cursor-face.riv',
    'assets/gatsby-bot.riv',
    'assets/halloween-ghost.riv',
    'assets/newsletter-bot.riv',
    'assets/orbit-draw-order-demo.riv',
    'assets/rive-bot.riv',
    'assets/the-pumpking-army.riv',
  ];

  @override
  void onInit() {
    Random random = Random();
    index = random.nextInt(splashScreens.length);
    Future.delayed(Duration(milliseconds: 5000)).then((value) {
      Get.offAll(() => const ChannelsPage());
    });
  }
}
