import 'package:get/get.dart';

import '../controllers/free_book_controller.dart';

class FreeBookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FreeBookController>(
      () => FreeBookController(),
    );
  }
}
