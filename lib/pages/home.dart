import 'package:flutter/material.dart';


import '../utils/constant.dart';
import '../widgets/navbar.dart';
import 'continers/container1.dart';
import 'continers/container2.dart';
import 'continers/container3.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [navBar(),
            Container1(),
            Container2(),
             Container3()
          ],
        ),
      ),
    );
  }
}