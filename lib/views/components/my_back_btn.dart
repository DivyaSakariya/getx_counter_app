import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget myBackBtn({IconData icon = Icons.arrow_back_ios_new_rounded}) {
  return IconButton(
    onPressed: () {
      Get.back();
    },
    icon: Icon(icon),
  );
}
