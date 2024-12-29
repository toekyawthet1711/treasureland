import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

import '../controllers/contact_us_controller.dart';

class ContactUsView extends GetView<ContactUsController> {
  const ContactUsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryClr,

      appBar: AppBar(

      toolbarHeight: 80,
      backgroundColor: AppColor.appBarClr,
      elevation: 4,

      title: Text("Contact Us",
      style: GoogleFonts.aBeeZee(
      fontSize: Dimesion.font14,
      fontWeight: FontWeight.bold,
      ),       
      ),

      centerTitle: true,
      ),

      body: Column(
        children: [

          SizedBox(
            height: Dimesion.height10 * 5
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  "img/logo.png"
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10 ,top: 10),
            child: Text("If You need Something Help",
            style: GoogleFonts.aBeeZee(
              fontSize: Dimesion.font12,
            ),
            ),
          ),

          Text("Contact Us EveryTime",
          style: GoogleFonts.aBeeZee(
            fontSize: Dimesion.font12,
            fontWeight: FontWeight.bold,
          ),
          ),

          SizedBox(height: Dimesion.height15),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: Dimesion.width10),
                    Text("Phone",
                    style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font14,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
            
                Row(
                  children: [
                    Text("09756192042",
                    style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font14,
                      fontWeight: FontWeight.bold,),
                      ),
                  ],
                ),
               
              ],
            ),
          ),

          Padding(
            padding:EdgeInsets.symmetric(horizontal: Dimesion.width15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: Dimesion.width10),
                    Text("Email",
                    style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font14,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
            
                Row(
                  children: [
                    Text("toekyawthe836@gmail.com",
                    style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font12,
                      fontWeight: FontWeight.bold,),
                      ),
                  ],
                ),
               
              ],
            ),
          ),

          SizedBox(height: Dimesion.height15),

          Padding(
            padding:EdgeInsets.symmetric(horizontal: Dimesion.width15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.place),
                    SizedBox(width: Dimesion.width10),
                    Text("Address",
                    style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font14,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
            
                Row(
                  children: [
                    Text("YGN,Myanmar",
                    style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font12,
                      fontWeight: FontWeight.bold,),
                      ),
                  ],
                ),
               
              ],
            ),
          ),

          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){
                //code
              },
              icon: Icon(
                Icons.facebook,
                size: Dimesion.iconSize32,
                color: Colors.blue),
              ),

              IconButton(onPressed: (){
                //code
              },
              icon: Icon(
                Icons.telegram,
                size: Dimesion.iconSize32,
                color: Colors.blueAccent,
                ),
              ),

              IconButton(onPressed: (){
                //code
              },
              icon: Icon(
                Icons.messenger,
                size: Dimesion.iconSize32,
                color: Colors.blue),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
