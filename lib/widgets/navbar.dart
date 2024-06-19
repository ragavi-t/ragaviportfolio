import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileNavBar(),
      desktop: desktoNavBar(),
    );
  }

  // ~~~~~~~~~~~ Mobile ~~~~~~~~~~~~~~~~~~

  Widget mobileNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // children: [Icon(Icons.menu), navLogo(),],
      ),
    );
  }

  // ~~~~~~~~~DeskTOP~~~~~~~~~~~~~~~~

  Widget desktoNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //navLogo(),
          Row(
            children: [
              // navButton('Feature'),
              // navButton('About us'),
              // navButton('Pricing'),
              // navButton('Feedback'),
            ],
          ),
          // Container(
          //   height: 45,
          //   child: ElevatedButton(
          //     style: boderedButtonStyle,
          //     onPressed: () {},
          //     child: Text("Request demo",style: TextStyle(color: AppColors.primary),),
          //   ),
          // )
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
  //
  // Widget navLogo() {
  //   return Container(
  //     width: 110,
  //     decoration: BoxDecoration(
  //         image: DecorationImage(image: AssetImage('asset/logo.png'))),
  //   );
  // }
}