import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:provider/provider.dart';
import '../../../providers/theme_provider.dart';
import '../../../view model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).theme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Responsive(
          desktop: AnimatedSubtitleText(
            start: 30,
            end: 40,
            text: 'Flutter ',
            color: theme.textColor,
          ),
          largeMobile: AnimatedSubtitleText(
              start: 30, end: 25, text: 'Flutter ', color: theme.textColor),
          mobile: AnimatedSubtitleText(
              start: 25, end: 20, text: 'Flutter ', color: theme.textColor),
          tablet: AnimatedSubtitleText(
              start: 40, end: 30, text: 'Flutter ', color: theme.textColor),
        ),
        (kIsWeb && Responsive.isLargeMobile(context)
            ? const Responsive(
                desktop: AnimatedSubtitleText(
                    start: 30, end: 40, text: 'Developer ', gradient: true),
                largeMobile: AnimatedSubtitleText(
                    start: 30, end: 25, text: 'Developer ', gradient: true),
                mobile: AnimatedSubtitleText(
                    start: 25, end: 20, text: 'Developer ', gradient: true),
                tablet: AnimatedSubtitleText(
                    start: 40, end: 30, text: 'Developer ', gradient: true),
              )
            : ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(colors: [
                    theme.developerTextColorOne,
                    //Color(0xFF33D2FF),
                    theme.developerTextColorTwo,
                  ]).createShader(bounds);
                },
                child: const Responsive(
                  desktop: AnimatedSubtitleText(
                      start: 30, end: 40, text: 'Developer ', gradient: false),
                  largeMobile: AnimatedSubtitleText(
                      start: 30, end: 25, text: 'Developer ', gradient: true),
                  mobile: AnimatedSubtitleText(
                      start: 25, end: 20, text: 'Developer ', gradient: true),
                  tablet: AnimatedSubtitleText(
                      start: 40, end: 30, text: 'Developer ', gradient: true),
                ),
              ))
      ],
    );
  }
}
