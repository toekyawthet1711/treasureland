import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryClr,
      appBar: AppBar(
        elevation: 4,
        backgroundColor: AppColor.appBarClr,
        toolbarHeight: 80,
        title: Text(
          "Profile",
          style: GoogleFonts.aBeeZee(
            fontSize: Dimesion.font18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Profile and Image

            Center(
              child: Padding(
                padding: EdgeInsets.only(top: Dimesion.height20),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("img/luffy.png"),
                      ),
                    ),
                    Positioned(
                      top: 75,
                      left: 65,
                      child: Container(
                        width: 31,
                        height: 31,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: Dimesion.height15),

            //Account Name
            Text(
              "Toe Kyaw Thet",
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.bold,
                fontSize: Dimesion.font14,
                color: AppColor.textbClr,
              ),
            ),

            SizedBox(height: Dimesion.height5),

            //email or phone number
            Text(
              "09756192042",
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.w400,
                fontSize: Dimesion.font12,
                color: AppColor.textbClr,
              ),
            ),

            SizedBox(height: Dimesion.height20),

            // Profile Options
            Obx(() => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      
                      GestureDetector(
                        onTap: (){},
                        child: _buildOptionItem(
                          icon: Icons.volume_up,
                          title: 'Notification',
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () => controller.toggleSection(0),
                        ),
                      ),

                      SizedBox(height: Dimesion.height5),

                      
                      _buildSwitchItem(
                        icon: Icons.wb_sunny_outlined,
                        title: 'Theme',
                        value: controller.isDarkMode.value,
                        onChanged: (value) => controller.toggleDarkMode(value),
                      ),

                      SizedBox(height: Dimesion.height5),

                      _buildDropdownItem(
                        icon: Icons.language,
                        title: 'Language',
                        value: controller.selectedLanguage.value,
                        items: controller.dropdownOptions,
                        onChanged: (value) =>
                            controller.selectedLanguage(value!),
                      ),

                      SizedBox(height: Dimesion.height5),

                      GestureDetector(
                          onTap: () {
                            //code
                            Get.toNamed("/achievement");
                          },
                          child: _buildOptionItem(
                              icon: Icons.map,
                              title: 'Achievement',
                              trailing: const Icon(Icons.arrow_forward),
                          ),
                          ),

                      SizedBox(height: Dimesion.height5),

                      GestureDetector(
                        onTap: (){
                          //code
                          Get.toNamed("/total-point");
                        },
                        child: _buildOptionItem(
                            icon: Icons.do_not_disturb_on_total_silence,
                            title: 'Total Point',
                            trailing: const Icon(Icons.arrow_forward)),
                      ),


                      SizedBox(height: Dimesion.height5),


                      GestureDetector(
                        onTap: (){
                          //code
                          Get.toNamed("/change-password");
                        },
                        child: _buildOptionItem(
                            icon: Icons.password,
                            title: 'Change Password',
                            trailing: const Icon(Icons.arrow_forward)),
                      ),

                      SizedBox(height: Dimesion.height5),

                      GestureDetector(
                        onTap: (){
                          //code
                          Get.toNamed('/contact-us');
                        },
                        child: _buildOptionItem(
                            icon: Icons.contact_emergency,
                            title: 'Contact Us',
                            trailing: const Icon(Icons.arrow_forward)),
                      ),

                      SizedBox(height: Dimesion.height5),
                      
                      GestureDetector(
                        onTap: (){
                          //code
                        },
                        child: _buildOptionItem(
                            icon: Icons.rule,
                            title: 'Terms & Condition',
                            trailing: const Icon(Icons.arrow_forward)),
                      ),

                      SizedBox(height: Dimesion.height5),

                      GestureDetector(
                        onTap: (){
                          //code
                        },
                        child: _buildOptionItem(
                            icon: Icons.info,
                            title: 'About Us',
                            trailing: const Icon(Icons.arrow_forward)),
                      ),

                       SizedBox(height: Dimesion.height5),

                      GestureDetector(
                        onTap: (){
                          //code
                          Get.toNamed('/login');
                        },
                        child: _buildOptionItem(
                          icon: Icons.logout,
                          title: 'Log Out',
                        
                          textColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  // Helper Widgets
  Widget _buildOptionItem({
    required IconData icon,
    required String title,
    Widget? trailing,
    Function()? onTap,
    Color textColor = Colors.black,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        title,
        style: GoogleFonts.aBeeZee(
          color: textColor,
        ),
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }

  Widget _buildSwitchItem({
    required IconData icon,
    required String title,
    required bool value,
    required Function(bool) onChanged,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        title,
        style: GoogleFonts.aBeeZee(),
      ),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
      ),
    );
  }

  Widget _buildDropdownItem({
    required IconData icon,
    required String title,
    required String value,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        title,
        style: GoogleFonts.aBeeZee(),
      ),
      trailing: DropdownButton<String>(
        value: value,
        items: items
            .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item),
                ))
            .toList(),
        onChanged: onChanged,
      ),
    );
  }
}
