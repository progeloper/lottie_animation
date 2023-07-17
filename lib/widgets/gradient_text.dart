import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(
      {super.key,
      required this.text,
      required this.gradient,
      required this.style});
  final String text;
  final Gradient gradient;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) {
        return gradient.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        );
      },
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
