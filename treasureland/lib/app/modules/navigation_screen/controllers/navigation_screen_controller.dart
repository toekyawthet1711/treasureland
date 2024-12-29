import 'package:get/get.dart';
import 'package:treasureland/app/modules/bookshelf/controllers/bookshelf_controller.dart';
import 'package:treasureland/app/modules/category/controllers/category_controller.dart';
import 'package:treasureland/app/modules/home/controllers/home_controller.dart';
import 'package:treasureland/app/modules/package/controllers/package_controller.dart';
import 'package:treasureland/app/modules/profile/controllers/profile_controller.dart';

class NavigationScreenController extends GetxController {
  //TODO: Implement NavigationScreenController
  var currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    initializeController(currentIndex.value);
  }

  void initializeController(int index) {
    // Initialize the corresponding controller based on the selected index
    switch (index) {
      case 0:
        Get.put(HomeController());
        break;
      case 1:
        Get.put(CategoryController());
        break;
      case 2:
        Get.put(PackageController());
        break;
      case 3:
        Get.put(BookshelfController());
        break;
        case 4:
        Get.put(ProfileController());
        break;
    }
  }

  void disposeController(int index) {
    // Delete the controller from memory when navigating away
    switch (index) {
      case 0:
        Get.delete<HomeController>();
        break;
      case 1:
        Get.delete<CategoryController>();
        break;
      case 2:
        Get.delete<PackageController>();
        break;
        case 3:
        Get.delete<BookshelfController>();
        break;
        case 4:
        Get.delete<ProfileController>();
        break;
        
    }
  }
}