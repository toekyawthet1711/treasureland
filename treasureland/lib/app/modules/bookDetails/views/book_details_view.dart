import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

import '../controllers/book_details_controller.dart';

class BookDetailsView extends GetView<BookDetailsController> {
  const BookDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: AppColor.primaryClr,

      appBar: AppBar(

      toolbarHeight: 80,
      backgroundColor: AppColor.appBarClr,
      elevation: 4,

      title: Text("Details",
      style: GoogleFonts.aBeeZee(
      fontSize: Dimesion.font14,
      fontWeight: FontWeight.bold,
      ),       
      ),

      centerTitle: true,
      ),

      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Book Image and Bookmark Icon
            Stack(
              alignment: Alignment.topRight,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 16),
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 8,
                          spreadRadius: 2,
                          offset: Offset(0, 4),
                        )
                      ],
                      image: DecorationImage(
                        image: AssetImage('img/harrypotter1.png'), // Add your image asset
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  right: 10,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.bookmark_border, color: Colors.black),
                  ),
                ),
              ],
            ),

            // Book Title
            SizedBox(height: Dimesion.height15),

            Center(
              child: Text(
                'Harry Potter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),

            // Book Details
            SizedBox(height: Dimesion.height15), 

            Center(
              child: Text(
                'Author  -  Person      Audio  -  Available',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 14,
                ),
              ),
            ),

            // Description
            SizedBox(height: Dimesion.height15), 

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Description',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),

            SizedBox(height: Dimesion.height10), 

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur. Risus quis praesent pellentesque pharetra accumsan dolor ullamcorper vel sit. Sociis facilisis tincidunt a feugiat porta integer pulvinar. Porttitor turpis non urna sed et. Risus neque nunc lacus consectetur at tellus nisl a.',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
            ),

            // Button at the Bottom
            SizedBox(height: 32),
            Center(
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple, // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Download Now',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: Dimesion.height30),
          ],
        ),
      ),
    );


  }
}
