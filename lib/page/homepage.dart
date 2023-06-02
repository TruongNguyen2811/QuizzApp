import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizzlet/page/HomePageComponent/category.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        // color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Let's play",
              style: TextStyle(
                fontSize: 35,
                color: Colors.purple[800],
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            SizedBox(
              height: size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
