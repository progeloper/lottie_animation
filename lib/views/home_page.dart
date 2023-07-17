import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_animation/widgets/gradient_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const GradientText(
          text: 'Lottie Animations',
          gradient: LinearGradient(
            colors: [
              Colors.red,
              Colors.deepOrange,
              Colors.yellowAccent,
              Colors.green,
              Colors.greenAccent,
              Colors.lightBlue,
              Colors.blue,
              Colors.indigoAccent,
              Colors.indigo,
              Colors.deepPurple,
              Colors.purple,
              Colors.red,
            ],
            stops: [
              0.0,
              0.090909091,
              0.090909091 * 2,
              0.090909091 * 3,
              0.090909091 * 4,
              0.090909091 * 5,
              0.090909091 * 6,
              0.090909091 * 7,
              0.090909091 * 8,
              0.090909091 * 9,
              0.090909091 * 10,
              0.090909091 * 11,
            ],
          ),
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            fontFamily: 'Lobster',
          ),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Lottie.asset(
          'assets/lottie_bird.json',
          controller: animationController,
          onLoaded: (composition) {
            animationController
              ..duration = composition.duration
              ..forward()..repeat();
          },
        ),
      ),
    );
  }
}
