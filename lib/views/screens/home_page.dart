import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/ecom_home_page',
                );
              },
              child: const Text("Ecom Home Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/calc_page',
                );
              },
              child: const Text("Calc Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/counter_page',
                );
              },
              child: const Text("Counter Page"),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Get.changeThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                );
              },
              icon: const Icon(Icons.brightness_5_rounded),
              label: const Text("Light"),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Get.changeThemeMode(
                  ThemeMode.light,
                );
              },
              icon: const Icon(Icons.brightness_5_rounded),
              label: const Text("Light"),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Get.changeThemeMode(
                  ThemeMode.dark,
                );
              },
              icon: const Icon(Icons.dark_mode_rounded),
              label: const Text("Dark"),
            ),
          ],
        ),
      ),
    );
  }
}
