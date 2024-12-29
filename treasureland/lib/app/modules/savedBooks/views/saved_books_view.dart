import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/saved_books_controller.dart';

class SavedBooksView extends GetView<SavedBooksController> {
  const SavedBooksView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SavedBooksView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SavedBooksView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
