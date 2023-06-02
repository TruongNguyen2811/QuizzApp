import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  final String title;
  final String img;

  const MyWidget({
    Key? key,
    required this.title,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Material(
      child: new InkWell(
        onTap: () {
          // print("tapped");
        },
        child: new Container(
          height: MediaQuery.of(context).size.width * 0.45,
          width: MediaQuery.of(context).size.width * 0.45,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 122, 121, 121), blurRadius: 10.0)
            ],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(40),
            color: Color.fromARGB(255, 241, 241, 241),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: Container(
                  height: 90,
                  width: 90,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          // shape: BoxShape.rectangle,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 180, 180, 180)
                                  .withOpacity(0.6),
                              // borderRadius
                              spreadRadius: 4,
                              blurRadius: 20,
                              offset: Offset(0, 30),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                      Positioned.fill(
                        child: Image.asset(
                          img,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                title,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
      // color: Color.fromARGB(0, 227, 17, 17),
    );
    // color: Colors.orange,
    // ),
    // );
  }
}
