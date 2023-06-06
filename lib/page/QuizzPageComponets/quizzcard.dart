import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzlet/page/QuizzPageComponets/Answer.dart';
import 'dart:math';
import '../../Controler/GetData.dart';

class MyScreen extends StatelessWidget {
  final Function(int) goToNextQuestion;
  bool Event;
  // int point;
  // final Function(int) onPointUpdate;
  MyScreen({
    Key? key,
    required this.goToNextQuestion,
    required this.Event,
    // required this.point,
    // required this.onPointUpdate,
  }) : super(key: key);
  @override
  int point = 0;
  // void updatePoint(int newPoint) {
  //   point = newPoint;
  // }

  Widget build(BuildContext context) {
    final MyController controller = Get.put(MyController());
    final random = Random();
    final randomNumber = random.nextInt(34);
    Size size = MediaQuery.of(context).size;
    // print(randomNumber);
    // print(controller.Data[0]);
    return Container(
      // appBar: AppBar(
      //   title: Text('My Screen'),
      // ),
      height: size.height * 0.75,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(200),
          topRight: Radius.circular(200),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Text(point.toString()),
          SizedBox(
            height: size.height * 0.03,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                top: 35,
                right: 50,
                left: 50,
              ),
              child: Obx(
                () => Text(
                  controller.Data[0]['questions'][randomNumber]['question'],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width * 0.9,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Obx(
              () => Answer(
                Answers: controller.Data[0]['questions'][randomNumber]
                    ['answers'],
                Correct: controller.Data[0]['questions'][randomNumber]
                    ['correct_answer'],
                event: Event,
                // point: point,
                onPointUpdate: goToNextQuestion,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
