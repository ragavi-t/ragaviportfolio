import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constant.dart';


class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer1(),
      desktop: desltopContainer1(),
    );
  }

  //==========MOBILE====================

  Widget mobileContainer1() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        // Lottie.asset('asset/bg5.json',
        //     fit: BoxFit.cover,
        //     width: MediaQuery.of(context).size.width,
        //     height: MediaQuery.of(context).size.height),
        Container(
          margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: h! / 1.2,
                  width: w! / 1.2,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/Ragavi.jpg'))),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  AnimatedTextKit(animatedTexts: [
                    ColorizeAnimatedText('RAGAVI T',
                        textStyle: TextStyle(
                          fontSize: w! / 10,
                          fontWeight: FontWeight.bold,
                        ),
                        colors: [Colors.black, Colors.cyan, Colors.lime])
                  ]),
                  SizedBox(height: 20),
                  Text(
                    'MOBILE APP  DEVELOPER',
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  //==========DESLTOP====================

  Widget desltopContainer1() {
    return Stack(
      children: [
        // Lottie.asset('asset/bg5.json',
        //     fit: BoxFit.cover,
        //     width: MediaQuery.of(context).size.width,
        //     height: MediaQuery.of(context).size.height),
        Container(
          margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  AnimatedTextKit(animatedTexts: [
                    ColorizeAnimatedText('RAGAVI T',
                        textStyle: TextStyle(
                          fontSize: w! / 20,
                          fontWeight: FontWeight.bold,
                        ),
                        colors: [Colors.black, Colors.cyan, Colors.lime])
                  ]),

                  // Text('AJISH KUMAR K', style: TextStyle(
                  //     fontSize: w! / 20,
                  //     fontWeight: FontWeight.bold,
                  // ),),

                  const SizedBox(height: 20),

                  Text(
                    'MOBILE APP DEVELOPER',
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                  )
                ],
              )),
              Expanded(
                  child: Container(
                height: 530,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('asset/Ragavi.jpg'))),
              ))
            ],
          ),
        ),
      ],
    );
  }
}