import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/theme_provider.dart';
import '../../../res/constants.dart';

class AnimatedSubtitleText extends StatelessWidget {
  final double start;
  final double end;
  final String text;
  final Color color;
  final bool gradient;
  const AnimatedSubtitleText({
    super.key,
    required this.start,
    required this.end,
    required this.text,
    this.gradient = false,
    this.color = Colors.white,
  });
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).theme;
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          text,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: color,
              fontWeight: FontWeight.w900,
              shadows: gradient
                  ? [
                      const Shadow(
                          color: Colors.pink,
                          offset: Offset(0, 2),
                          blurRadius: 10),
                      const Shadow(
                          color: Colors.pink,
                          offset: Offset(0, -2),
                          blurRadius: 10),
                    ]
                  : [],
              height: 0,
              fontSize: value),
        );
      },
    );
  }
}
