import 'package:get/get.dart';

import '../controllers/download_books_controller.dart';

class DownloadBooksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DownloadBooksController>(
      () => DownloadBooksController(),
    );
  }
}
