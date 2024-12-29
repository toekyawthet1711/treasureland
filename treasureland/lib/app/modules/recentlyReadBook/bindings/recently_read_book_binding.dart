import 'package:get/get.dart';

import '../controllers/recently_read_book_controller.dart';

class RecentlyReadBookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecentlyReadBookController>(
      () => RecentlyReadBookController(),
    );
  }
}
