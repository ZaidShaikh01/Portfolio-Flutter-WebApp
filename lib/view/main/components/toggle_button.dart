import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/theme_provider.dart';
import '../../../res/constants.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Provider.of<ThemeProvider>(context).theme == darkTheme;
    final theme = Provider.of<ThemeProvider>(context).theme;

    return GestureDetector(
      onTap: () =>
          Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
      child: TweenAnimationBuilder<double>(
        tween:
            Tween<double>(begin: isDark ? 1.0 : 0.0, end: isDark ? 1.0 : 0.0),
        duration: const Duration(milliseconds: 500),
        builder: (context, value, child) {
          final Alignment iconAlign = Alignment.lerp(
              Alignment.centerLeft, Alignment.centerRight, value)!;

          final iconRotation = value * 3.14;
          final icon = value > 0.5
              ? const Icon(Icons.nightlight_round,
                  key: ValueKey('dark'), size: 18, color: Colors.white)
              : const Icon(Icons.wb_sunny,
                  key: ValueKey('light'), size: 18, color: Colors.orange);

          return Container(
            width: 65,
            height: 32,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [theme.linearColorOne, theme.linearColorTwo],
              ),
              boxShadow: [
                BoxShadow(
                    color: theme.boxShadowOne,
                    offset: const Offset(0, -1),
                    blurRadius: 5),
                BoxShadow(
                    color: theme.boxShadowTwo,
                    offset: const Offset(0, 1),
                    blurRadius: 5),
              ],
            ),
            child: Stack(
              children: [
                AnimatedAlign(
                  duration: const Duration(milliseconds: 500),
                  alignment: iconAlign,
                  curve: Curves.easeInOut,
                  child: Transform.rotate(
                    angle: iconRotation,
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder: (child, animation) =>
                          ScaleTransition(scale: animation, child: child),
                      child: icon,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
