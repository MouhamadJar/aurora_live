import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_tv/view/channels_page.dart';
import 'package:live_tv/view/splash_screen.dart';

import 'controllers/main_controller.dart';
import 'models/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live TV',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: kPrimaryColor,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        body: GetBuilder<MainController>(
            init: MainController(),
            builder: (context) {
              return const Text('hello');
            }),
      ),
    );
  }
}
