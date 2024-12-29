import 'package:get/get.dart';

import '../controllers/saved_books_controller.dart';

class SavedBooksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SavedBooksController>(
      () => SavedBooksController(),
    );
  }
}
