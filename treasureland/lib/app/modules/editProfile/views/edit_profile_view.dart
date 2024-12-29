import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryClr,

      appBar: AppBar(

      backgroundColor: AppColor.appBarClr,
      elevation: 4,
       title: Text("Edit Profile",
        style: GoogleFonts.aBeeZee(
          fontSize: Dimesion.font14,
          fontWeight: FontWeight.bold,
        ),
        
       ),

       centerTitle: true,
      ),

      body: Column(
        children: [
          Center(
            child: Padding(
              padding:EdgeInsets.symmetric(vertical: Dimesion.height15),
              child: Stack(
                children: [
              
                SizedBox(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("img/luffy.png"),
                  ),
                ),

                Positioned(
                  top: 35,
                  left: 30,
                  child: IconButton(onPressed: (){
                    //code
                  }, 
                  icon: Icon(Icons.camera_alt,
                  size: 32,
                  ),
                  ),
                ),

                ],
              ),
            ),
          ),

          //Username

          Padding(
            padding:EdgeInsets.only(left: Dimesion.width15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Username",
                 style: GoogleFonts.aBeeZee(
                fontSize: Dimesion.font16,
                fontWeight: FontWeight.bold,
            ),
            ),
              ],
            ),
          ),

          SizedBox(height: Dimesion.height15),

          //Usrname in the box
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 366,
              height: 67,
              decoration: BoxDecoration(
                color: Color(0xFFD7D7D7),
                borderRadius: BorderRadius.circular(12),
              ),
              
            
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Toe Kyaw Thet",
                style: GoogleFonts.aBeeZee(
                  fontSize: Dimesion.font14,
                  fontWeight: FontWeight.w500,
                ),
                ),
              ),
            ),
          ),

           SizedBox(height: Dimesion.height15),


          //Email or Phone

          Padding(
            padding:EdgeInsets.only(left: Dimesion.width15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Phone",
                 style: GoogleFonts.aBeeZee(
                fontSize: Dimesion.font16,
                fontWeight: FontWeight.bold,
            ),
            ),
            ],
            ),
          ),

           SizedBox(height: Dimesion.height15),

          //Phone in the box
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 366,
              height: 67,
              decoration: BoxDecoration(
                color: Color(0xFFD7D7D7),
                borderRadius: BorderRadius.circular(12),
              ),
            
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("09756192042",
                style: GoogleFonts.aBeeZee(
                  fontSize: Dimesion.font14,
                  fontWeight: FontWeight.w500,
                ),
                ),
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(top: Dimesion.height30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    //code
                  },

                  child: Container(
                    width: 134,
                    height: 41,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.red,
                      ),
                    ),
                              
                    child: Center(child: Text("Cancel",
                    style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font12,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
                    ),
                    ),
                  ),
                ),

                SizedBox(width: Dimesion.width20),

                GestureDetector(
                  onTap: (){
                    //code
                  },
                  
                  child: Container(
                    width: 134,
                    height: 41,
                    decoration: BoxDecoration(
                      color: AppColor.buttonClr,
                      borderRadius: BorderRadius.circular(12),
                    ),
                              
                    child: Center(child: Text("Update",
                    style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font12,
                      color: AppColor.textwClr,
                      fontWeight: FontWeight.w300,
                    ),
                    ),
                    ),
                  ),
                ),
              ],
            ),
          )
          
          
        ],
      ),
    );
  }
}
