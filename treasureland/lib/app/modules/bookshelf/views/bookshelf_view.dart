import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

import '../controllers/bookshelf_controller.dart';

class BookshelfView extends GetView<BookshelfController> {
  const BookshelfView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryClr,
      appBar: AppBar(
        title:Text(
          'Bookshelf',
          style:GoogleFonts.aBeeZee(
            fontSize: Dimesion.font16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColor.appBarClr,
        elevation: 4,
        toolbarHeight: 80,
      ),

      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: Dimesion.width20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: Dimesion.height15),
          
              // Search Bar
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
          
              SizedBox(height: Dimesion.height15),
          
              //Recently Read Book
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recently Read Book",
                  style: GoogleFonts.aBeeZee(
                    fontSize: Dimesion.font14,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
          
                  TextButton(onPressed: (){
                    //code
                    Get.toNamed("recently-read-book");
                  },
                   child: Text("See All"),
                   ),
                   
                ],
              ),
          
             SizedBox(height: Dimesion.height15),
          
              // Book Grid
              SizedBox(
                
                child: GridView.builder(
                 shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
          
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return _buildBookCard(index);
                  },
                ),
              ),
          
                SizedBox(height: Dimesion.height15),
          
                // download books
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.download, color: Colors.purple,
                      size: Dimesion.size24),
          
                      SizedBox(width: Dimesion.width15/2),
          
                      Text('Download Books',
                       style: GoogleFonts.aBeeZee(
                        fontSize: Dimesion.font14,
                       ),
                       ),
                    ],
                  ),
                  IconButton(onPressed: (){
                    Get.toNamed("/download-books");
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
                      Icon(Icons.save, color: Colors.purple,
                      size: Dimesion.size24),
          
                      SizedBox(width: Dimesion.width15/2),
          
                      Text('Saved Books',
                       style: GoogleFonts.aBeeZee(
                        fontSize: Dimesion.font14,
                       ),
                       ),
                    ],
                  ),
                  IconButton(onPressed: (){
                    //code
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
          
          
             
            ],
          ),
        ),
      ),
    );
  }
}



Widget _buildBookCard(int index) {
    List<String> bookImages = [
      "img/harrypotter1.png",
      "img/harrypotter2.png"
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
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
        SizedBox(height: Dimesion.height10),
        
      ],
    );
  }

