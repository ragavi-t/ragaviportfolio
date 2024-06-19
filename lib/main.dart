import 'package:flutter/material.dart';

import 'package:websiteragavi/pages/home.dart';
import 'package:websiteragavi/utils/appcolors.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Website',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
      ),
      home:
          // MyAnimatedContainerPage(),
          const Home(),
    );
  }
}

// class MyAnimatedContainerPage extends StatefulWidget {
//   @override
//   _MyAnimatedContainerPageState createState() => _MyAnimatedContainerPageState();
// }
//
// class _MyAnimatedContainerPageState extends State<MyAnimatedContainerPage> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     double containerWidth = MediaQuery.of(context).size.width;
//     double screenWidth = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       body: Center(
//         child: AnimatedContainer(
//           duration: Duration(seconds: 4),
//           curve: Curves.easeInOut,
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           // margin: EdgeInsets.symmetric(horizontal: screenWidth / 10, vertical: 20),
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('asset/sample.png'),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               AnimatedTextKit(
//                 animatedTexts: [
//                   ColorizeAnimatedText(
//                     'AJISH KUMAR K',
//                     textStyle: TextStyle(
//                       fontSize: containerWidth / 10,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     colors: [
//                       Colors.black,
//                       Colors.cyan,
//                       Colors.lime,
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'FLUTTER DEVELOPER',
//                 style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }