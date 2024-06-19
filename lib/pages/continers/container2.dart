import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constant.dart';
import '../../widgets/textwidget.dart';


class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer2(),
      desktop: desltopContainer2(),
    );
  }

  //==========MOBILE====================

  Widget mobileContainer2() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.99,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Lottie.asset('asset/bg5.json',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height),
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(

                    // gradient: LinearGradient(
                    //   begin: Alignment.bottomLeft,
                    //   end: Alignment.topRight,
                    //   colors: [Color(0xFFFFF176),Color(0xFF84FFFF)],
                    // ),
                    ),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/image.png'))),
                      ),
                      const Row(
                        children: [
                          Icon(Icons.call_sharp),
                          // Text('  8122760575',style: TextStyle(fontStyle: FontStyle.italic),),
                          AnimatedTextWidget(
                            myText: '  8122760575',
                            fontSize: 15,
                          ),

                          SizedBox(width: 30),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Icon(Icons.mail),
                          AnimatedTextWidget(
                            myText: '  inboxofajish@gmail.com',
                            fontSize: 15,
                          ),
                          // Text('  inboxofajish@gmail.com',style: TextStyle(fontStyle: FontStyle.italic),)
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Icon(Icons.location_on_rounded),
                          AnimatedTextWidget(
                            myText: '  Tirupur-641605',
                            fontSize: 15,
                          )
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          AnimatedTextKit(animatedTexts: [
                            ColorizeAnimatedText('2+',
                                textStyle: const TextStyle(
                                  fontSize: 30,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                                colors: [Colors.black, Colors.deepOrange])
                          ]),
                          AnimatedTextKit(animatedTexts: [
                            ColorizeAnimatedText(
                                '    \t \tYears\n\t\t\tExperience',
                                textStyle: const TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                                colors: [
                                  Colors.black,
                                  Colors.greenAccent,
                                  Colors.deepOrange
                                ])
                          ]),
                        ],
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                          width: MediaQuery.of(context).size.width / 0.5,
                          height: MediaQuery.of(context).size.height / 05,
                          child: AnimatedTextKit(animatedTexts: [
                            ColorizeAnimatedText(
                              'Highly skilled Mobile App Developer experience in \nbuilding cross-platform mobile applications using Dart and \nFlutterframework.Proficient in RESTful API integration and \nstatemanagement.Committed to delivering efficient and \nbug-free solutions.',
                              textStyle: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                              colors: [
                                Colors.black,
                                Colors.green,
                                Colors.deepOrange
                              ],
                            ),
                          ])),
                    ],
                  ),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }

  //==========DESLTOP====================

  Widget desltopContainer2() {
    return Container(
      height: 700,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Lottie.asset('asset/bg5.json',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity),
              Container(
                width: double.infinity,
                height: 712,
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.call_sharp),
                              AnimatedTextWidget(
                                myText: '  6379928335',
                                fontSize: 15,
                              ),
                              SizedBox(width: 30),
                              Row(
                                children: [
                                  Icon(Icons.mail),
                                  AnimatedTextWidget(
                                    myText: '  ragaviragavi02@gmail.com',
                                    fontSize: 15,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                          Row(
                            children: [
                              Icon(Icons.location_on_rounded),
                              AnimatedTextWidget(
                                myText: '  Namakkal',
                                fontSize: 15,
                              )
                            ],
                          ),
                          SizedBox(height: 40),
                          Row(
                            children: [
                              AnimatedTextKit(animatedTexts: [
                                ColorizeAnimatedText('8',
                                    textStyle: const TextStyle(
                                      fontSize: 30,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    colors: [
                                      Colors.black,
                                      Colors.green,
                                      Colors.deepOrange
                                    ])
                              ]),
                              AnimatedTextKit(animatedTexts: [
                                ColorizeAnimatedText(
                                    '    \t \tMonth\n\t\t\tExperience',
                                    textStyle: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                    colors: [
                                      Colors.black,
                                      Colors.greenAccent,
                                      Colors.deepOrange
                                    ])
                              ]),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                              child: AnimatedTextKit(animatedTexts: [
                            ColorizeAnimatedText(
                              'Highly skilled Mobile App Developer experience in \nbuilding cross-platform mobile applications using Dart and \nFlutterframework.Proficient in RESTful API integration and \nstatemanagement.Committed to delivering efficient and \nbug-free solutions.',
                              textStyle: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                              colors: [
                                Colors.black,
                                Colors.green,
                                Colors.deepOrange
                              ],
                            ),
                          ])),
                        ],
                      ),
                      Expanded(
                        child:


                        Container(
                          height: 500,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/image.png'))),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      height: 60,
      width: 160,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    );
  }
}