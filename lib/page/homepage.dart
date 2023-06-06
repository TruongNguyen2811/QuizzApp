import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizzlet/UpData/UploadData.dart';
import 'package:quizzlet/page/HomePageComponent/category.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 40,
          right: 15,
          left: 15,
        ),
        height: size.height,
        width: size.width,
        // color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Truong!",
                      style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 106, 184, 249),
                      ),
                    ),
                    Text(
                      "Let's make this day productive!",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.png'),
                  radius: 35,
                  foregroundColor: Colors.blue,
                  // width: 100.0,
                  // height: 100.0,
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.3,
              width: MediaQuery.of(context).size.width,
              // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 122, 121, 121),
                      blurRadius: 5.0)
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(40),
                color: Color.fromARGB(255, 241, 241, 241),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Let's play",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 106, 184, 249),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyWidget(
                          img: 'assets/sport.png',
                          title: 'Sport',
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyWidget(
                          img: 'assets/math.png',
                          title: 'Math',
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyWidget(
                          img: 'assets/chemistry.png',
                          title: 'Chemistry',
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyWidget(
                          img: 'assets/code.png',
                          title: 'Code',
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyWidget(
                          img: 'assets/biology.png',
                          title: 'Biology',
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyWidget(
                          img: 'assets/history.png',
                          title: 'History',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )

            // TextButton(
            //   onPressed: (() {
            //     uploadQuizData();
            //   }),
            //   child: Text(
            //     "Update Data",
            //     style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.w500,
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: size.height * 0.05,
            // ),
          ],
        ),
      ),
    );
  }
}
