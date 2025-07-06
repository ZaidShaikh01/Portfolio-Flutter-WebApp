import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/theme_provider.dart';
import '../../../../res/constants.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).theme;
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(defaultPadding / 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            colors: [
              theme.linearColorOne,
              theme.linearColorTwo,
            ],
          ),
          boxShadow: [
            BoxShadow(
                color: theme.boxShadowOne,
                blurRadius: 10,
                offset: const Offset(0, 2)),
            BoxShadow(
                color: theme.boxShadowTwo,
                blurRadius: 10,
                offset: const Offset(0, -2)),
          ]),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Transform.rotate(
              angle: 0.1,
              child: Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.cover,
              ))),
    );
  }
}
