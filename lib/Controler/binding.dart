import 'package:get/get.dart';
import 'package:quizzlet/Controler/GetData.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }
}
