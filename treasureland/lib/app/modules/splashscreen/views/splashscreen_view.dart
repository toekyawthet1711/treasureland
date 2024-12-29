import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xfff5f9ff),
     body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Center(child: Image(image: AssetImage("img/logo.png"),),),
      ],
     ),
    );
  }
}
