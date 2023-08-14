import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/controllers/counter_controller.dart';
import 'package:getx_counter_app/views/components/my_back_btn.dart';

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
        ),
        body: Center(
          child: Obx(
            () => Text(
              counterController.count.toString(),
              style: const TextStyle(
                fontSize: 42,
              ),
            ),
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
          ],
        ));
  }
}
