import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryClr,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColor.appBarClr,
        title: Text('Category', 
        style: GoogleFonts.aBeeZee(
          fontSize: Dimesion.font16,
          fontWeight: FontWeight.bold,
        ),
        ),
        elevation: 4,
        centerTitle: true,
      ),

      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: Dimesion.width20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              SizedBox(height: Dimesion.height10 * 2),
          
              // Search bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search by Book Name',
                  hintStyle: GoogleFonts.aBeeZee(
                    fontSize: Dimesion.font12,
                    fontWeight: FontWeight.w100,
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(onPressed: (){
                    //code
                  },
                  icon: Icon(Icons.tune),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
          
              SizedBox(height: Dimesion.height20),
          
            
              // popular books
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.local_fire_department, color: Colors.purple,
                      size: Dimesion.size24),
          
                      SizedBox(width: Dimesion.width15/2),
          
                      Text('Popular Books:',
                       style: GoogleFonts.aBeeZee(
                        fontSize: Dimesion.font14,
                       ),
                       ),
                    ],
                  ),
                  IconButton(
                   onPressed: (){
                    Get.toNamed('/popular-book');
                   },
                   icon: Icon(Icons.arrow_forward,
                   size: Dimesion.size18),
                   ),
                ],
              ),
          
              Divider(
                thickness: 1,
              ),
          
              //free book
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.topic, color: Colors.purple,
                      size: Dimesion.size24),
          
                      SizedBox(width: Dimesion.width15/2),
          
                      Text('Free Books:',
                       style: GoogleFonts.aBeeZee(
                        fontSize: Dimesion.font14,
                       ),
                       ),
                    ],
                  ),
                  IconButton(onPressed: (){
                    //code
                    Get.toNamed("/free-book");
                  },
                   icon: Icon(Icons.arrow_forward,
                   size: Dimesion.size18),
                   ),
                ],
              ),
          
              Divider(
                thickness: 1,
              ),
          
              SizedBox(height: Dimesion.height10),
          
              //all books
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text("All Books",
                   style: GoogleFonts.aBeeZee(
                    fontSize: Dimesion.font16,
                    fontWeight: FontWeight.bold,
                   ),
                   ),
          
                   TextButton(
                    onPressed: (){
                      //code
                      Get.toNamed('/all-books');
                    },
                     child: Text("See All",
                     style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font12,
                     ),
                     ),
                   ),
                ],
              ),
          
              SizedBox(height: Dimesion.height10),
          
          
              // Book grid
              SizedBox(
                height: Dimesion.screenHeight,
                child: GridView.builder(
                 shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return _buildBookCard(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  

  Widget _buildBookCard(int index) {
    List<String> bookImages = [
      "img/harrypotter1.png",
      "img/harrypotter2.png"
    ];

    List<String> name = [
      "Harry potter1",
      "Harry potter2",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            child: GestureDetector(
              onTap: (){
                Get.toNamed("/book-details");
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(bookImages[index % bookImages.length]),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: Dimesion.height10),
        Text(
          name[index % name.length],
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
