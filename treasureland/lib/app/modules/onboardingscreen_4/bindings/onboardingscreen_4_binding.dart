import 'package:get/get.dart';

import '../controllers/onboardingscreen_4_controller.dart';

class Onboardingscreen4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Onboardingscreen4Controller>(
      () => Onboardingscreen4Controller(),
    );
  }
}
