import 'package:get/get.dart';

import '../controllers/popular_book_controller.dart';

class PopularBookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PopularBookController>(
      () => PopularBookController(),
    );
  }
}
