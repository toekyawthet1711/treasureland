import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/components/text_field/gf_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treasureland/components/button.dart';
import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: AppColor.primaryClr,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColor.appBarClr,
        title: Text(
          'Change Password',
          style: GoogleFonts.aBeeZee(
            fontSize: Dimesion.font16,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 4,
        centerTitle: true,
      ),

      body: Padding(
        padding:EdgeInsets.all(Dimesion.width20),
        child: SingleChildScrollView(
          child: Column(
            
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Current Password",
                  style: GoogleFonts.aBeeZee(
                    fontSize: Dimesion.font26/2,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),

            SizedBox(height: Dimesion.height15),


            GFTextField(
              decoration: InputDecoration(
                labelText: 'Enter current password',
                labelStyle: GoogleFonts.aBeeZee(fontSize: Dimesion.font12 , color: Colors.black26),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.purple, width: 2),
                ),
                prefixIcon: Icon(Icons.password, color: Colors.purple),
                suffixIcon: Icon(Icons.remove_red_eye_rounded, color: Colors.purple),
              ),
            ),

             SizedBox(height: Dimesion.height15),

             Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("New Password",
                  style: GoogleFonts.aBeeZee(
                    fontSize: Dimesion.font26/2,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),

            SizedBox(height: Dimesion.height15),


            GFTextField(
              decoration: InputDecoration(
                labelText: 'Enter new password',
                labelStyle: GoogleFonts.aBeeZee(fontSize: Dimesion.font12 , color: Colors.black26),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.purple, width: 2),
                ),
                prefixIcon: Icon(Icons.password, color: Colors.purple),
                suffixIcon: Icon(Icons.remove_red_eye_rounded, color: Colors.purple),
              ),
            ),

            SizedBox(height: Dimesion.height15),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Confirm Password",
                  style: GoogleFonts.aBeeZee(
                    fontSize: Dimesion.font26/2,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),

            SizedBox(height: Dimesion.height15),


            GFTextField(
              decoration: InputDecoration(
                labelText: 'Confirm password',
                labelStyle: GoogleFonts.aBeeZee(fontSize: Dimesion.font12 , color: Colors.black26),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.purple, width: 2),
                ),
                prefixIcon: Icon(Icons.password, color: Colors.purple),
                suffixIcon: Icon(Icons.remove_red_eye_rounded, color: Colors.purple),
              ),
            ),

            SizedBox(height: Dimesion.height30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  MyButton(text: "Update"),
              ],
            )
          


            

            
                
            ],
          ),
        ),
      ),
    );
  }
}
