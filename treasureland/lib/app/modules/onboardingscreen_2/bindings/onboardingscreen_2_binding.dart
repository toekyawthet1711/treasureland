import 'package:get/get.dart';

import '../controllers/onboardingscreen_2_controller.dart';

class Onboardingscreen2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Onboardingscreen2Controller>(
      () => Onboardingscreen2Controller(),
    );
  }
}
