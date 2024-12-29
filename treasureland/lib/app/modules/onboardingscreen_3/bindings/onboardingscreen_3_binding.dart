import 'package:get/get.dart';

import '../controllers/onboardingscreen_3_controller.dart';

class Onboardingscreen3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Onboardingscreen3Controller>(
      () => Onboardingscreen3Controller(),
    );
  }
}
