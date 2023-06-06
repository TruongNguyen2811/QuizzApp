import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var Data = [].obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    var snapshot = await FirebaseFirestore.instance
        .collection('quizzes')
        .where('title', isEqualTo: 'Maths')
        .get();
    Data.value =
        snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    print(Data);
    var Title = Data.length;
    print(Title);
  }
}

// class MyBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut<MyController>(() => MyController());
//   }
// }
