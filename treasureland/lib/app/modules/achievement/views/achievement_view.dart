import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

import '../controllers/achievement_controller.dart';

class AchievementView extends GetView<AchievementController> {
  const AchievementView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 4,
        backgroundColor: AppColor.appBarClr,
        title: Text('Achievement',
        style: GoogleFonts.aBeeZee(
          fontSize: Dimesion.font16,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(bottom: Dimesion.height30),
          child: Column(
            children: [
               
               Padding(
                 padding:EdgeInsets.only(top: Dimesion.height40),
                 child: Center(
                   child: Image(
                    image: AssetImage(
                      "img/achi.png"
                      ),
                   ),
                 ),
               ),
               
          ClaimCard(),
          ClaimCard(),
          ClaimCard(),
          
            ],
          ),
        ),
      ),
    );
  }
}



class ClaimCard extends StatelessWidget {
  const ClaimCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
    margin:  EdgeInsets.symmetric(vertical: Dimesion.height15, horizontal: Dimesion.width15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
     child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            'Total Screen Time',
            style: GoogleFonts.aBeeZee(
              fontSize: Dimesion.font12,
              fontWeight: FontWeight.w500
            ),
           ),
           SizedBox(height: Dimesion.height10),
          // Progress Bar
          LinearProgressIndicator(
            value: 0.1,
            minHeight: 8,
            backgroundColor: Colors.grey.shade300,
            valueColor: const AlwaysStoppedAnimation<Color>(AppColor.buttonClr),
          ),
    
          SizedBox(height: Dimesion.height10),
    
          // Progress Text
          Text(
            'total time 3/50 mins',
           style: GoogleFonts.aBeeZee(
              fontSize: 12,
              fontWeight: FontWeight.normal
            ),
          ),
    
          SizedBox(height: Dimesion.height10),
    
          // Claim Reward Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                //code
              },
    
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.buttonClr,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Claim Point - 10', style: TextStyle(fontSize: 14)),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
