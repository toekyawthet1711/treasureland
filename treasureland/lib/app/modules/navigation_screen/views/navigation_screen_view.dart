import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:treasureland/app/modules/bookshelf/views/bookshelf_view.dart';
import 'package:treasureland/app/modules/category/views/category_view.dart';
import 'package:treasureland/app/modules/home/views/home_view.dart';
import 'package:treasureland/app/modules/package/views/package_view.dart';
import 'package:treasureland/app/modules/profile/views/profile_view.dart';


import '../controllers/navigation_screen_controller.dart';

class NavigationScreenView extends GetView<NavigationScreenController> {
  final List<Widget> _views = [
    const HomeView(),
    const CategoryView(),
    const PackageView(),
    const BookshelfView(),
    const ProfileView(),
  ];

  NavigationScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>
          _views[controller.currentIndex.value]), // Display the current view
      bottomNavigationBar: Obx(
        () => CurvedNavigationBar(
          buttonBackgroundColor: Colors.deepPurple.shade100,
          color: const Color(0xFF633ABA),
          backgroundColor: Colors.transparent,
          index: controller.currentIndex.value,
          height: 70.0,
         
          items: <Widget>[
            
            Icon(
              Icons.home,
              size: 30,
              // color: Colors.white,
              color: controller.currentIndex.value == 0
                  ? Colors.black87
                  : Colors.white, // Black when selected, white otherwise
            ),
            
            Icon(
              Icons.search,
              size: 30,
              color: controller.currentIndex.value == 1
                  ? Colors.black87
                  : Colors.white, // Black when selected, white otherwise
            ),
            Icon(
              Icons.video_call,
              size: 30,
              color: controller.currentIndex.value == 2
                  ? Colors.black87
                  : Colors.white, // Black when selected, white otherwise
            ),
            Icon(
              Icons.shop,
              size: 30,
              color: controller.currentIndex.value == 3
                  ? Colors.black87
                  : Colors.white, // Black when selected, white otherwise
            ),
            Icon(
              Icons.person,
              size: 30,
              color: controller.currentIndex.value == 4
                  ? Colors.black87
                  : Colors.white, // Black when selected, white otherwise
            ),
          ],
          onTap: (index) {
            // Dispose of the old controller
            controller.disposeController(controller.currentIndex.value);

            // Initialize the new controller
            controller.initializeController(index);

            // Update the current index
            controller.currentIndex.value = index;
          },
        ),
      ),
    );
  }
}
