import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:treasureland/components/button.dart';
import 'package:treasureland/components/circle.dart';
import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';


import '../controllers/onboardingscreen_2_controller.dart';

class Onboardingscreen2View extends GetView<Onboardingscreen2Controller> {
  const Onboardingscreen2View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
        
              //skip button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: (){
                      //
                    },
                   child: Padding(
                     padding:  EdgeInsets.only(top: Dimesion.height15,right: Dimesion.width10),
                     child: Text("Skip",
                     style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font16,
                      fontWeight: FontWeight.bold,
                     ),
                     ),
                   ),
                   ),
                ],
              ),
        
              SizedBox(height: Dimesion.height40),
        
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
        
                  //image
                  Center(child: Image.asset("img/onboarding2.png"),),
        
                  SizedBox(height: Dimesion.height30),
                ],
              ),
        
              Padding(
                padding:  EdgeInsets.only(left: Dimesion.width30,right: Dimesion.width30 ,bottom:Dimesion.height40),
                child: RichText(
                  text: TextSpan(
                    text: "Lorem ipsum dolor sit amet consectetur. Pellentesque ullamcorper quis integer dictum turpis. Tellus purus viverra ac amet.",
                    style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font16,
                      fontWeight: FontWeight.w300,
                      color: AppColor.textbClr,
                    ),
                  ),
                  ),
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Circle(width: Dimesion.width10, height: Dimesion.height10, color: Colors.grey),

                  SizedBox(width: Dimesion.width10),

                  Circle(width: Dimesion.width15, height: Dimesion.height15, color: Colors.black),

                  SizedBox(width: Dimesion.width10),
                  
                  Circle(width: Dimesion.width10, height: Dimesion.height10, color: Colors.grey),

                  SizedBox(width: Dimesion.width10),

                  Circle(width: Dimesion.width10, height: Dimesion.height10, color: Colors.grey),
                ],
              ),

              SizedBox(height: Dimesion.height30),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  MyButton(text: "Next"),
                ],
              ),


              
            
            ],
          ),
        ),
      ),
     
    );
  }
}


