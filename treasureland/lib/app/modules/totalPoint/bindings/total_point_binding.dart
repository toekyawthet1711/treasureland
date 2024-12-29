import 'package:get/get.dart';

import '../controllers/total_point_controller.dart';

class TotalPointBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TotalPointController>(
      () => TotalPointController(),
    );
  }
}
