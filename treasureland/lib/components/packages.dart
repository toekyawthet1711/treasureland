import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

class Packages extends StatelessWidget {
  const Packages({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(Dimesion.width15),
              child: Container(
                padding: EdgeInsets.only(top: Dimesion.width10,left: Dimesion.width10,bottom: Dimesion.height15),
                decoration: BoxDecoration(
                    color: AppColor.appBarClr,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 2),
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
                    ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text('Pro',
                        style:
                          GoogleFonts.aBeeZee(
                            fontSize: Dimesion.font18,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                    ),
        
                    SizedBox(height: Dimesion.height15/2),
        
                    Text('- US \$50/1month', style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font16,
                    ),
                    ),
        
                    SizedBox(height: Dimesion.height15/2),
        
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('✔ Get All Books'),
                        SizedBox(height: Dimesion.height10/2),
                        Text('✔ Advanced Security'),
                        SizedBox(height: Dimesion.height10/2),
                        Text('✔ Priority Support'),
                        SizedBox(height: Dimesion.height10/2),
                        Text('✔ Standard Legal Agreement'),
                      ],
                    ),
        
                    SizedBox(height: Dimesion.height15),
        
                    Center(
                      child: ElevatedButton(
                        
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.buttonClr,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                           ),
                           
                            
                        child: Text('GET PRO',
                        style: GoogleFonts.aBeeZee(
                          color: AppColor.textwClr,
        
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    
  }
}
  
