import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treasureland/components/packages.dart';
import 'package:treasureland/const/colors.dart';
import 'package:treasureland/const/dimesion.dart';

import '../controllers/package_controller.dart';

class PackageView extends GetView<PackageController> {
  const PackageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryClr,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColor.appBarClr,
        title: Text(
          'Package',
          style: GoogleFonts.aBeeZee(
            fontSize: Dimesion.font16,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 4,
        centerTitle: true,
      ),
      body: Packages(),

    );

  }
}
