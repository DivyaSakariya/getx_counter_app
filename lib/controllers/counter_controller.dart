import 'package:get/get.dart';
import 'package:getx_counter_app/modals/counter_modal.dart';

class CounterController extends GetxController {
  final CounterModal _counterModal = CounterModal();

  get getCounter {
    return _counterModal.count.value;
  }

  void increment() {
    _counterModal.count.value++;
  }

  void decrement() {
    if (_counterModal.count.value > 0) {
      _counterModal.count.value--;
    } else {
      _counterModal.count.value;
    }
  }

  void multiply() {
    _counterModal.count.value =
        _counterModal.count.value * _counterModal.count.value;
  }

  void divide() {
    _counterModal.count.value =
        (_counterModal.count.value / _counterModal.count.value) as int;
  }
}
