import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        AreaInfoText(title: 'Contact', text: '+91-8208900954'),
        AreaInfoText(title: 'Email', text: 'szaid5146@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '@Zaid Shaikh'),
        AreaInfoText(title: 'Github', text: '@ZaidShaikh01'),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Skills',
          style: TextStyle(color: textColor),
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
