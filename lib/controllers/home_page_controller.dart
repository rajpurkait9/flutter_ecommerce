import 'package:get/get.dart';

class HomePageController extends GetxController {
  // final _counter = 0.obs;
  var currentIndex = 0.obs;
  // get counter => _counter.value;
  // set counter(value) => _counter.value = value;

  // void increment() => counter++;

  void changePage(int index) => currentIndex.value = index;
}
