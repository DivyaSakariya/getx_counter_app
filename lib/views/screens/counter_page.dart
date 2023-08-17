import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/controllers/counter_controller.dart';
import 'package:getx_counter_app/views/components/my_back_btn.dart';
import 'package:getx_counter_app/views/screens/calc_page.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Page"),
        centerTitle: true,
        leading: myBackBtn(),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(const CalcPage());
            },
            icon: const Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),
      body: Center(
        child: Obx(
          () {
            return Text(
              counterController.getCounter.toString(),
              style: const TextStyle(
                fontSize: 42,
              ),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterController.increment();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              counterController.decrement();
            },
            child: const Icon(Icons.horizontal_rule_rounded),
          ),
          FloatingActionButton(
            onPressed: () {
              counterController.multiply();
            },
            child: const Text(
              "*",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              counterController.divide();
            },
            child: const Text(
              "/",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
