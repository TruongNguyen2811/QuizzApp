import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzlet/page/homepage.dart';
import 'package:quizzlet/page/quizzpage.dart';

class Result extends StatelessWidget {
  final String subject;
  final int point;
  const Result({
    Key? key,
    required this.subject,
    required this.point,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Kết Thúc",
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Kết quả của bạn là:",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$point/',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 106, 184, 249),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                child: InkWell(
                  onTap: () {
                    Get.to(Homepage());
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.2,
                    width: MediaQuery.of(context).size.width * 0.2,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 122, 121, 121),
                            blurRadius: 10.0)
                      ],
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(40),
                      color: Color.fromARGB(255, 106, 184, 249),
                    ),
                    child: Icon(
                      Icons.home,
                      size: 40,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Material(
                child: InkWell(
                  onTap: () {
                    Get.to(QuizzPage(Subject: subject));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.2,
                    width: MediaQuery.of(context).size.width * 0.2,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 122, 121, 121),
                            blurRadius: 10.0)
                      ],
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(40),
                      color: Color.fromARGB(255, 106, 184, 249),
                    ),
                    child: Icon(
                      Icons.replay_outlined,
                      size: 40,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
