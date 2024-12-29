import 'package:get/get.dart';

import '../controllers/onboardingscreen_1_controller.dart';

class Onboardingscreen1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Onboardingscreen1Controller>(
      () => Onboardingscreen1Controller(),
    );
  }
}
