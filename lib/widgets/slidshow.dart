import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ModernSlideshow extends StatefulWidget {
  final List<String> imagePaths;
  final Duration slideDuration;

  const ModernSlideshow({
    Key? key,
    required this.imagePaths,
    required this.slideDuration,
  }) : super(key: key);

  @override
  _ModernSlideshowState createState() => _ModernSlideshowState();
}

class _ModernSlideshowState extends State<ModernSlideshow> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: widget.imagePaths.length,
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        viewportFraction: 1.0,
        onPageChanged: (index, _) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      itemBuilder: (context, index, _) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage(widget.imagePaths[index]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}