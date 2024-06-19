import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:particles_fly/particles_fly.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/constant.dart';
import '../../widgets/slidshow.dart';



class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer3(),
      desktop: desltopContainer3(),
    );
  }

  //==========MOBILE====================

  Widget mobileContainer3() {
    final PageController controller = PageController();
    return Container(
      height: MediaQuery.of(context).size.height *02.40,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(

        children: [
          Expanded(child: Stack(
            children: [
              Lottie.asset('asset/bg5.json', fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height),
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedTextKit(animatedTexts: [
                      ColorizeAnimatedText('Worked Projects', textStyle: const TextStyle(
                    fontSize: 50,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold
                      ),
                          colors: [
                            Colors.black,Colors.cyan,Colors.lime
                          ])
                    ]),

                    // const Text('Worked Projects',style: TextStyle(fontSize: 50,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),

                    const SizedBox(height: 50),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Calculator ',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                            SizedBox(
                              width: 200,
                              child: ModernSlideshow(
                                imagePaths: [
                                  'asset/calculator1.jpg',
                                  'asset/calculator2.jpg',
                                  'asset/calculator3.jpg',

                                ],
                                slideDuration: Duration(seconds: 3),

                              ),
                            )
                          ],
                        ),
                         SizedBox(height: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Fortune Automation',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                            SizedBox(
                              width: 200,
                              child: ModernSlideshow(
                                imagePaths: [
                                  'asset/fortunesplashscreen.jpg',
                                  'asset/visitreport.jpg',
                                  'asset/clientregister.jpg',
                                ],
                                slideDuration: Duration(seconds: 3),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Vijaya agencies',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                           SizedBox(
                             width: 200,
                             child: ModernSlideshow(
                               imagePaths: [
                                 'asset/v1.jpg',
                                 'asset/v2.png',
                                 'asset/v3.png',

                               ],
                               slideDuration: Duration(seconds: 3),
                             ),
                           )
                          ],
                        ),
                        SizedBox(height: 30),
                        // Column(
                        //   children: [
                        //     Text('Floppy Bird Game',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                        //     SizedBox(
                        //       width: 200,
                        //       child: ModernSlideshow(
                        //         imagePaths: [
                        //           'asset/fp1.png',
                        //           'asset/fp2.png',
                        //           'asset/fp3.png',
                        //         ],
                        //         slideDuration: Duration(seconds: 3),
                        //       ),
                        //     )
                        //   ],
                        // ),
                        // SizedBox(height: 30),
                        Column(
                          children: [
                            Text('Cakey',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                            SizedBox(
                              width: 200,
                              child: ModernSlideshow(
                                imagePaths: [
                                  'asset/cakey1.png',
                                  'asset/cakey2.png',
                                  'asset/cakey3.png',
                                ],
                                slideDuration: Duration(seconds: 3),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        Column(
                          children: [
                            Text('Allen Dreyfus',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                            SizedBox(
                              width: 200,
                              child: ModernSlideshow(
                                imagePaths: [
                                  'asset/ad1.png',
                                  'asset/ad2.png',
                                  'asset/ad3.png',
                                ],
                                slideDuration: Duration(seconds: 3),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    AnimatedTextKit(animatedTexts: [
                      ColorizeAnimatedText('Skills', textStyle: const TextStyle(
                          fontSize: 30,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold
                      ),
                          colors: [
                            Colors.black,Colors.cyan
                          ])
                    ]),
                    // const Text('Skills',style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SizedBox(
                        //     height: 50,width: 50,
                        //     child: Lottie.asset('asset/swift_logo.json')),
                        SizedBox(
                            height: 130,width: 130,
                            child: Lottie.asset('asset/flutter.json')),
                        SizedBox(
                            height: 70,width: 70,
                            child: Lottie.asset('asset/github_logo.json')),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),

          // Container(
          //   color: Colors.white,
          //   padding: EdgeInsets.symmetric(vertical: 40),
          //   child: Expanded(
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //
          //       ],
          //     ),
          //   ),
          // )


        ],
      ),
    );
  }


  //==========DESLTOP====================

  Widget desltopContainer3() {
    final PageController controller = PageController();
    return Container(
      height: MediaQuery.of(context).size.width, width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(

        children: [
          Expanded(child: Stack(

            children: [
              Lottie.asset('asset/bg5.json', fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity),
              Container(
                margin: EdgeInsets.symmetric(horizontal: w!/50,vertical: 20),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        AnimatedTextKit(animatedTexts: [
                          ColorizeAnimatedText('Worked Projects', textStyle: const TextStyle(
                              fontSize: 50,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold
                          ),
                              colors: [
                                Colors.black,Colors.cyan,Colors.lime
                              ])
                        ]),
                        // const Text('Worked Projects',style: TextStyle(fontSize: 50,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),

                        const SizedBox(height: 50),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Calculator',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                                SizedBox(height: 20),
                                SizedBox(
                                  height: 200,width: 300,
                                  child: ModernSlideshow(
                                    imagePaths: [
                                      'asset/calculator1.jpg',
                                      'asset/calculator2.jpg',
                                      'asset/calculator3.jpg',
                                    ],
                                    slideDuration: Duration(seconds: 3),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 150),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Fortune Automation',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                                SizedBox(height: 20),
                                // Image(image: AssetImage('asset/hc11.png')),
                                SizedBox(
                                  height: 200,width: 300,
                                  child: ModernSlideshow(
                                    imagePaths: [
                                      'asset/fortunesplashscreen.jpg',
                                      'asset/visitreport.jpg',
                                      'asset/clientregister.jpg',
                                    ],
                                    slideDuration: Duration(seconds: 3),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 80),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Vijaya agencies',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                                SizedBox(height: 20),
                                SizedBox(
                                  height: 200,width: 300,
                                  child: ModernSlideshow(
                                    imagePaths: [
                                      'asset/v1.jpg',
                                      'asset/v2.png',
                                      'asset/v3.png',
                                    ],
                                    slideDuration: Duration(seconds: 3),
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(width: 150),
                            //  Column(
                            //   children: [
                            //     Text('Floppy Bird Game',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                            //     SizedBox(
                            //       height: 200,width: 300,
                            //       child: ModernSlideshow(
                            //         imagePaths: [
                            //           'asset/fp1.png',
                            //           'asset/fp2.png',
                            //           'asset/fp3.png',
                            //         ],
                            //         slideDuration: Duration(seconds: 3),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 20),
                                Text('Cakey',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),

                                SizedBox(
                                  height: 200,width: 300,
                                  child: ModernSlideshow(
                                    imagePaths: [
                                      'asset/cakey1.png',
                                      'asset/cakey2.png',
                                      'asset/cakey3.png',
                                    ],
                                    slideDuration: Duration(seconds: 3),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 150),
                             Column(
                              children: [
                                Text('AllenDreyfus',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                                SizedBox(
                                  height: 200,width: 300,
                                  child: ModernSlideshow(
                                    imagePaths: [
                                      'asset/ad1.png',
                                      'asset/ad4.jpg',
                                      'asset/ad5.jpg',
                                    ],
                                    slideDuration: Duration(seconds: 3),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        AnimatedTextKit(animatedTexts: [
                          ColorizeAnimatedText('Skills', textStyle: const TextStyle(
                              fontSize: 30,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold
                          ),
                              colors: [
                                Colors.black,Colors.cyan])
                        ]),
                        // const Text('Skills',style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                           // SizedBox(
                           //  height: 60,width: 60,
                           //     child: Lottie.asset('asset/swift_logo.json')),
                           SizedBox(
                               height: 150,width: 150,
                               child: Lottie.asset('asset/flutter.json')),
                           SizedBox(
                               height: 80,width: 80,
                               child: Lottie.asset('asset/github_logo.json')),
                          ],
                        ),
                      ],
                    ),

                  ],
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
      height: 100,width: 160,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image),fit: BoxFit.contain)
      ),
    );
  }
}