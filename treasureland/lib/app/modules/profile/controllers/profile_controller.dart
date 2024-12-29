import 'package:get/get.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

  // Reactive variables
  var isDarkMode = false.obs;
  var selectedLanguage = 'Myanmar'.obs; // Default language
  var dropdownOptions = ['English', 'Myanmar'];

  // For expand/collapse sections
  var sectionExpanded = List.generate(10, (index) => false).obs;

  // Toggle expand/collapse
  void toggleSection(int index) {
    sectionExpanded[index] = !sectionExpanded[index];
    update();
  }

  // Toggle dark mode
  void toggleDarkMode(bool value) {
    isDarkMode(value);
  }
}


  
