import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class AnimatedTextWidget extends StatefulWidget {
  final String myText;
  final double fontSize;

  const AnimatedTextWidget({
    Key? key,
    required this.myText,
    required this.fontSize,
  }) : super(key: key);

  @override
  _AnimatedTextWidgetState createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget>
    with TickerProviderStateMixin {
  // late AnimationController _controller;
  // late Animation<double> _opacityAnimation;
  // late Animation<Offset> _slideAnimation;
  //
  // @override
  // void initState() {
  //   super.initState();
  //
  //   _controller = AnimationController(
  //     vsync: this,
  //     duration: const Duration(milliseconds: 3000),
  //   );
  //
  //   _opacityAnimation = Tween<double>(
  //     begin: 0.0,
  //     end: 1.0,
  //   ).animate(CurvedAnimation(
  //     parent: _controller,
  //     curve: const Interval(0.0, 0.5, curve: Curves.easeInOut),
  //   ));
  //
  //   _slideAnimation = Tween<Offset>(
  //     begin: const Offset(0.0, 0.5),
  //     end: Offset.zero,
  //   ).animate(CurvedAnimation(
  //     parent: _controller,
  //     curve: const Interval(0.5, 1.0, curve: Curves.easeInOut),
  //   ));
  //
  //   _controller.forward();
  // }
  //
  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.black,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    var colorizeTextStyle = TextStyle(
        fontSize: widget.fontSize,
        fontFamily: 'Horizon',
        fontStyle: FontStyle.italic);

    return SizedBox(
      width: 200.0,
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            widget.myText,
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
        ],
        isRepeatingAnimation: true,
      ),
    );

    // return AnimatedBuilder(
    //   animation: _controller,
    //   builder: (context, child) {
    //     return Opacity(
    //       opacity: _opacityAnimation.value,
    //       child: Transform.translate(
    //         offset: _slideAnimation.value,
    //         child: Text(
    //           widget.myText,
    //           style: const TextStyle(
    //             fontStyle: FontStyle.italic,
    //             fontWeight: FontWeight.bold,
    //
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Animated Text Widget Example'),
//       ),
//       body: Center(
//         child: AnimatedTextWidget(),
//       ),
//     ),
//   ));
// }