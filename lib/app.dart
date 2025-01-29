import 'package:flutter/material.dart';
import 'package:flutter_task/Home/view/home_view.dart';
import 'package:get/get.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
     home: HomeScreen()
    );
  }
}
