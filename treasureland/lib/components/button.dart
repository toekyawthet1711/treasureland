import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

class MyButton extends StatelessWidget {

  final String text;
  const MyButton({
  super.key,
  required this.text,
  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: Dimesion.width20),
      child: ElevatedButton(
             onPressed: () {
              Get.toNamed("/navigation-screen");
            // ScaffoldMessenger.of(context).showSnackBar(
            // SnackBar(content: Text('Button Pressed!')),
           // );
          },
      
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            backgroundColor: AppColor.buttonClr, // Button color
            foregroundColor: AppColor.textwClr, // Text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners
            ),
            elevation: 4, // Shadow for depth
            shadowColor: Colors.deepPurpleAccent, // Shadow color
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                 text,
                style: GoogleFonts.aBeeZee(
                  fontSize: Dimesion.font14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
    );
    
  }
}