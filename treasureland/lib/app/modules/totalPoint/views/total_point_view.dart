import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

import '../controllers/total_point_controller.dart';

class TotalPointView extends GetView<TotalPointController> {
  const TotalPointView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryClr,

      appBar: AppBar(

      toolbarHeight: 80,
      backgroundColor: AppColor.appBarClr,
      elevation: 4,

      title: Text("Total Points",
      style: GoogleFonts.aBeeZee(
      fontSize: Dimesion.font14,
      fontWeight: FontWeight.bold,
      ),       
      ),

      centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              Center(child: Image.asset("img/achi.png")),

              Column(
                children: [
                  Text("Total Point - 50 points",
                  style: GoogleFonts.aBeeZee(
                    fontSize: Dimesion.font14,
                  ),
                  ),

                  Text("point expired date - 1/1/2025",
                  style: GoogleFonts.aBeeZee(
                    fontSize: Dimesion.font12,
                    fontWeight: FontWeight.normal,
                  ),
                  ),
                ],
              ),

              Row(
                children: [
                  Text("Exchange Item",
                  style: GoogleFonts.aBeeZee(
                    fontSize: Dimesion.font14,
                    fontWeight: FontWeight.bold,
                  ),
                  ),

                  TextButton(onPressed: (){
                    //code
                  }, 
                  child: Text("see all"),
                  ),
                ],
              ),

              _buildBookCard(title: "Harry Potter", 
              type: "Point Exchange Book", 
              audioIncluded: true, 
              image: "img/harrypotter1.png"),

               _buildBookCard(title: "Harry Potter", 
              type: "Point Exchange Book", 
              audioIncluded: true, 
              image: "img/harrypotter1.png"),

               _buildBookCard(title: "Harry Potter", 
              type: "Point Exchange Book", 
              audioIncluded: true, 
              image: "img/harrypotter1.png"),

               _buildBookCard(title: "Harry Potter", 
              type: "Point Exchange Book", 
              audioIncluded: true, 
              image: "img/harrypotter1.png"),

              
            ],
          ),
        ),
      ),
    );
  }
}


Widget _buildBookCard({
  required String title,
  required String type,
  required bool audioIncluded,
  required String image,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xFFf7f7f7),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(0, 2),
          blurRadius: 4,
          spreadRadius: 1,
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.only(left: Dimesion.width15),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color(0xFFf7f7f7),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage(image),
              ),
            ),
          ),
          SizedBox(width: Dimesion.width10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: GoogleFonts.aBeeZee(
                    fontSize: Dimesion.font14,
                    fontWeight: FontWeight.bold),
                    ),

                SizedBox(height: Dimesion.height10),

                Text('Type - $type', style: TextStyle(color: Colors.grey)),

                SizedBox(height: Dimesion.height5),
                Text('Audio - ${audioIncluded ? 'Included' : 'Not included'}',
                    style: TextStyle(color: Colors.grey)),
                SizedBox(height: Dimesion.height5),
                Padding(
                  padding: EdgeInsets.only(right: Dimesion.width10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed("");
                        },
                        style: ElevatedButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          backgroundColor: AppColor.buttonClr, // Button color
                          foregroundColor: AppColor.textwClr, // Text color
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12), // Rounded corners
                          ),
                          elevation: 4, // Shadow for depth
                          shadowColor: Colors.deepPurpleAccent, // Shadow color
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Exchange",
                              style: GoogleFonts.aBeeZee(
                                fontSize: Dimesion.font18 / 2,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
