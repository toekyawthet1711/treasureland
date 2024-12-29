import 'package:get/get.dart';

class BookshelfController extends GetxController {
  //TODO: Implement BookshelfController

  // Sample book data
  final books = [
    {'title': 'Harry Potter', 'image': 'img/carousel1.png'},
    {'title': 'Harry Potter', 'image': 'img/carousel1.png'},
    {'title': 'Harry Potter', 'image': 'img/carousel1.png'},
    {'title': 'Harry Potter', 'image': 'img/carousel1.png'},
  ].obs;

  var isExpanded1 = false.obs;
  var isExpanded2 = false.obs;



  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
