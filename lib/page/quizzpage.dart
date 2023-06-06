import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzlet/main.dart';
import 'package:quizzlet/model/question.dart';
import 'package:quizzlet/page/QuizzPageComponets/quizzcard.dart';
import 'package:quizzlet/page/result.dart';

import '../Controler/GetData.dart';

class QuizzPage extends StatefulWidget {
  final String Subject;

  const QuizzPage({
    Key? key,
    required this.Subject,
  }) : super(key: key);

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  int point = 0;
  int questionIndex = 0;
  bool _skip = false;
  bool event = false;
  void goToNextQuestion(int newPoint) {
    if (questionIndex < 9) {
      setState(() {
        _skip = true;
        questionIndex++;
        event = false;
        point = newPoint;
      });
    } else {
      _skip = false;

      Get.to(
        Result(
          subject: widget.Subject,
          point: newPoint,
        ),
      );
      print(widget.Subject);
    }
  }

  @override
  Widget build(BuildContext context) {
    // print(controller.Data[0]);
    // bool _skip = false;
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      // initialBinding: MyBinding(),
      backgroundColor: Color.fromARGB(255, 106, 184, 249),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 106, 184, 249),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.to(Result(subject: widget.Subject, point: point));
          },
        ),
        title: Text(
          widget.Subject,
          style: GoogleFonts.dancingScript(
            fontSize: 35,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: (() {
              setState(() {
                goToNextQuestion(point);
              });
              // print(_skip);
              // print(questionIndex);
              // _skip = true;
            }),
            child: Icon(
              Icons.skip_next,
              size: 35,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$point/',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '10',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          MyScreen(
            goToNextQuestion: goToNextQuestion,
            Event: event,
            // point: point,
            // onPointUpdate: updatePoint,
          ),
          // if (_skip) MyScreen(goToNextQuestion: goToNextQuestion),
        ],
      ),
    );
  }
}
