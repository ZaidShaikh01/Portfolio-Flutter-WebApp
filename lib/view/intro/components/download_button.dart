import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../providers/theme_provider.dart';
import '../../../res/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).theme;
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(
            'https://drive.google.com/drive/u/0/folders/1hy0-YV5ZSf86a1kOYEfLuXt_LSRjPk1h'));
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 1.5, horizontal: defaultPadding * 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: theme.boxShadowOne,
                offset: Offset(0, -1),
                blurRadius: 5),
            BoxShadow(
                color: theme.boxShadowTwo, offset: Offset(0, 1), blurRadius: 5),
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                theme.linearColorOne,
                theme.linearColorTwo,
              ]),
        ),
        child: Row(
          children: [
            Text(
              'Download CV',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: theme.buttonTextColor,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: defaultPadding / 3,
            ),
            Icon(
              FontAwesomeIcons.download,
              color: Colors.white,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
