import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';


import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBarClr,
      
      body: 
      SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
           
            children: [
              // Logo
              Padding(
                padding: EdgeInsets.only(top: Dimesion.height40,bottom: Dimesion.height40),
                child: Center(
                  child: SizedBox(
                    height: 175,
                    child: const Image(
                      image: AssetImage('img/logo.png'),
                    ),
                  ),
                ),
              ),

             Container(
              width: Dimesion.screeWidth,
              height: Dimesion.screenHeight,
              decoration: BoxDecoration(
                color: AppColor.primaryClr,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.primaryClr,
                    offset: Offset.zero,
                    blurRadius: 4,
                    spreadRadius: 0,
                  )
                ],
              ),

                 child: Column(
                  children: [

                    //Sign In
                    Padding(
                      padding:EdgeInsets.only(top: Dimesion.height20,bottom: Dimesion.height5),
                      child: Text("Sign In",
                      style: GoogleFonts.archivo(
                        fontSize: 20,
                        color: AppColor.textbClr,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      ),
                    
                    
                    //Welcome Back
                    Text("Welcome Back",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: AppColor.textbClr,
                    ),
                    ),
             
                    SizedBox(height: Dimesion.height40),
             
                    //Email
                     Padding(
                     padding: EdgeInsets.only(left: Dimesion.width20 , right: Dimesion.width20),
                     child: TextField(
                     decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      labelText: "Email",
                      hintText: "Enter Your Email",
                      hintStyle: TextStyle(
                      
                        color: Colors.black26,
                        fontSize: 14
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black26,
                      ),
                      
                     
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
             
                 //Password
                 Padding(
                  padding: EdgeInsets.only(left: Dimesion.width20 , right: Dimesion.width20 , top: Dimesion.height20 , bottom: Dimesion.height10),
                  child: TextField(
                
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      labelText: "Password",
                      hintText: "Enter Your Password",
                       hintStyle: TextStyle(
                        color: Colors.black26,
                        fontSize: 14
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black26,
                      ),
                      suffixIcon: IconButton(onPressed: (){}, 
                      icon:Icon(Icons.remove_red_eye),),
                     
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
             
                //Forgot Password
                Padding(
                  padding:EdgeInsets.only(right: Dimesion.width30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      ),
                    ],
                  ),
                ),
             
               //Sign In
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: Dimesion.width20, vertical: Dimesion.height20),
                  child: GestureDetector(
                    onTap: () {
                      //code
                      Get.toNamed("/navigation-screen");
                    },
                    child: Container(
                      width: 367,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColor.buttonClr,
                        borderRadius: BorderRadius.circular(12),                      
                      ),
                    
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.poppins(
                           fontSize: Dimesion.font12,
                           color: AppColor.textwClr,
                          ),
                          ),
                          ),
                    ),
                  ),
                ),
             
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Don't have an Account?",
                    style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font12,
                    ),
                    ),
             
                    TextButton(onPressed: (){
                      //code
                      Get.toNamed('/signup');
                    }, 
                    child: Text("Sign Up",
                    style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font12,
                    ),
                    ),
                    ),
                  ],
                ),
             
             
                ],
              ),
                         
             ),
            ],
          ),
        ),
      ),

    

     

      
      
    );
  }
}
