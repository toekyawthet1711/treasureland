import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

import '../controllers/free_book_controller.dart';

class FreeBookView extends GetView<FreeBookController> {
  const FreeBookView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryClr,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColor.appBarClr,
        title: Text(
          'Free Books',
          style: GoogleFonts.aBeeZee(
            fontSize: Dimesion.font16,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 4,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: Dimesion.height15),

              _buildBookCard(
                  title: "HarryPotter",
                  type: "Free",
                  audioIncluded: true,
                  image: "img/cat.png"),

              SizedBox(height: Dimesion.height15),
              
              _buildBookCard(
                  title: "HarryPotter",
                  type: "Free",
                  audioIncluded: true,
                  image: "img/friend.png"),

              SizedBox(height: Dimesion.height15),
              
              _buildBookCard(
                  title: "HarryPotter",
                  type: "Free",
                  audioIncluded: true,
                  image: "img/storybook.png"),

              SizedBox(height: Dimesion.height15),
              
              _buildBookCard(
                  title: "HarryPotter",
                  type: "Free",
                  audioIncluded: true,
                  image: "img/harrypotter4.png"),
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
                              "Read Now",
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
  

