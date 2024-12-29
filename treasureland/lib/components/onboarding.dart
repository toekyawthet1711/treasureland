import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  final String text;
  final Image image;
  const Onboarding({
    super.key,
    required this.text,
    required this.image,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          //skip
          Row(
            mainAxisAlignment: MainAxisAlignment.end,   
            children: [

             TextButton(onPressed: (){},
              child: Text("SKIP"),
              ),
            ],
          ),

          //image

          Image.asset(image as String),

          Text("1/4"),

          


        ],
      ),
    );
  }
}