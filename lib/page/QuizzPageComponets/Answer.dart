import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:quizzlet/Controler/checkAnswer.dart';
import 'package:quizzlet/model/question.dart';
import 'package:quizzlet/page/QuizzPageComponets/quizzcard.dart';

import '../../Controler/GetData.dart';

class Answer extends StatefulWidget {
  final List Answers;
  final String Correct;
  // int point;
  final Function(int) onPointUpdate;
  bool event;

  // final
  Answer({
    Key? key,
    required this.Answers,
    required this.Correct,
    required this.event,
    required this.onPointUpdate,
  }) : super(key: key);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  late int answersLength;
  late List<bool> _isTapped;
  late List<bool> _isTrue;
  int _selectedIndex = -1;
  late bool check = false;
  bool answertrue = false;
  int newPoint = 0;
  // int point = 0;
  @override
  void initState() {
    super.initState();
    answersLength = widget.Answers.length;
    _isTapped = List.generate(answersLength, (index) => false);
    _isTrue = List.generate(answersLength, (index) => false);
    widget.event = true;
  }

  void clickchange(int index) {
    _selectedIndex = index;
    print(index);
    _isTapped = List.generate(answersLength, (i) => i == index);
    // print(_isTapped[index]);
    widget.event = true;
  }

  void checkAnswer() {
    if (widget.Answers[_selectedIndex]['identifier'] == widget.Correct) {
      _isTrue = List.generate(answersLength, (i) => i == _selectedIndex);
      // widget.point++;
      // newPoint = newPoint + 1;
      // widget.onPointUpdate(newPoint);
      // widget.onPointUpdate(newPoint);
      answertrue = true;
    } else {
      _isTrue = List.generate(answersLength, (index) => false);
      newPoint = newPoint;
      // widget.onPointUpdate(newPoint);
      answertrue = false;
    }
    check = true;
    widget.event = true;
    print(newPoint);
  }

  void checkpoint() {
    if (answertrue == true) {
      newPoint = newPoint + 1;
      widget.onPointUpdate(newPoint);
    } else {
      widget.onPointUpdate(newPoint);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.event == false) {
      _isTapped = List.generate(answersLength, (index) => false);
      _isTrue = List.generate(answersLength, (index) => false);
      _selectedIndex = -1;
      check = false;
      answertrue = false;
    }
    // final CheckAnswer checkAnswer = Get.put(CheckAnswer());
    Size size = MediaQuery.of(context).size;
    // bool correct = false;
    // check = false;
    // Color Colorcheck = Colors.white;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            child: ListView.builder(
              itemCount: widget.Answers.length,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    print(check);
                    if (check == false) {
                      setState(() {
                        clickchange(index);
                      });
                    }
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          widget.Answers[index]['identifier'],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: size.width * 0.1,
                        ),
                        Text(
                          widget.Answers[index]['Answer'],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: 100,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: _isTapped[index]
                                ? check
                                    ? _isTrue[index]
                                        ? Colors.green
                                        : Colors.red
                                    : Color.fromARGB(255, 10, 136, 240)
                                : Color.fromARGB(255, 122, 121, 121),
                            blurRadius: 10.0)
                      ],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromARGB(255, 241, 241, 241),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
        check
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (() {
                        // print(_selectedIndex);
                        setState(() {
                          checkpoint();
                        });
                        // print(widget.event);
                        // print(widget.point);
                        // print(check);
                      }),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      )),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (() {
                        print(_selectedIndex);
                        setState(() {
                          checkAnswer();
                        });
                        // print(widget.event);
                        // print(widget.point);
                        // print(check);
                      }),
                      child: Text(
                        "Check",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      )),
                ],
              )
      ],
    );
    // // print(_isTapped);
    // // ),
    // print(correct);
  }
}
