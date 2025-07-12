import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';
import '../../../providers/theme_provider.dart';
import '../../../res/constants.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).theme;
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 400; // tweak threshold as needed

    return Row(
      children: [
        Row(
          children: [
            Text('Check on Github',
                style: TextStyle(color: theme.textColor),
                overflow: TextOverflow.ellipsis),
            if (isMobile)
              const SizedBox(
                width: 70,
              ),
            IconButton(
                onPressed: () {
                  launchUrl(Uri.parse(projectList[index].link));
                },
                icon: SvgPicture.asset('assets/icons/github.svg')),
          ],
        ),
        if (!isMobile) const Spacer(),
        if (!isMobile)
          TextButton(
              onPressed: () {
                launchUrl(Uri.parse(projectList[index].link));
              },
              child: const Text(
                'Read More>>',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ))
      ],
    );
  }
}
