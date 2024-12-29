// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treasureland/components/packages.dart';

import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryClr,
      appBar: AppBar(
        toolbarHeight: 80,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('img/harrypotter1.png'),
              radius: 23,
            ),
            
            SizedBox(width: Dimesion.width15 / 2),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning',
                  style: GoogleFonts.aBeeZee(
                    fontSize: Dimesion.font14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: Dimesion.height5),
                Text(
                  'Toe Kyaw Thet',
                  style: GoogleFonts.aBeeZee(
                    fontSize: Dimesion.font12,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  //code
                },

                icon: Icon(Icons.notifications, color: Colors.black),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: AppColor.appBarClr,
        elevation: 4,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: Dimesion.height10 , bottom: Dimesion.height30 , left: Dimesion.width20 , right: Dimesion.width20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimesion.height15),
              // Search bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search book by Name...',
                  hintStyle: GoogleFonts.aBeeZee(
                    fontSize: Dimesion.font12,
                    color: Colors.black26,
                  ),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      //code
                    },
                    icon: Icon(Icons.tune),
                  ),
                ),
              ),
          
              SizedBox(height: Dimesion.height20),
          
              // slider
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('img/carousel1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          
              SizedBox(height: Dimesion.height20),
          
              // Free books
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Free Book',
                    style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Get.toNamed("free-book");
                    },
                    child: Text('See all'),
                  ),
                ],
              ),
          
              SizedBox(height: Dimesion.height20),
          
              _buildBookCard(
                title: 'HarryPotter',
                type: 'Free',
                audioIncluded: true,
                image: 'img/harrypotter1.png',
              ),
          
              SizedBox(height: Dimesion.height20),
          
              // Subscription section
              Text(
                'Subscription Packages',
                style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font14,
                      fontWeight: FontWeight.bold,
                    ),
              ),
          
              SizedBox(height: Dimesion.height15),
          
             Packages(),
              
            SizedBox(height: Dimesion.height15),
          
              // Popular books
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Books',
                    style: GoogleFonts.aBeeZee(
                      fontSize: Dimesion.font14,
                      fontWeight: FontWeight.bold,
                  ),
                  ),

                  TextButton(onPressed: (){
                    Get.toNamed("/popular-book");
                  },
                   child: Text("See All"),
                   ),
                  
                ],
              ),
          
               SizedBox(height: Dimesion.height15),
          
              _buildBookCard(
                title: 'HarryPotter',
                type: 'Free',
                audioIncluded: true,
                image: 'img/harrypotter1.png',
              ),
            ],
          ),
        ),
      ),
    );
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

  Widget _buildSubscriptionCard() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.purple[50],
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.purple),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pro',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('- US \$50/month', style: TextStyle(fontSize: 16)),
          SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('✔ Get All Books'),
              Text('✔ Advanced Security'),
              Text('✔ Priority Support'),
              Text('✔ Standard Legal Agreement'),
            ],
          ),
          SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              child: Text('GET PRO'),
            ),
          ),
        ],
      ),
    );
  }
}
