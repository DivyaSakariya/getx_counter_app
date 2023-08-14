import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/views/screens/counter_page.dart';
import 'package:getx_counter_app/views/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      // home: const HomePage(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/counter_page',
          page: () => const CounterPage(),
        ),
      ],
    );
  }
}
