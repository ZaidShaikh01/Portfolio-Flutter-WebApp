import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/components/side_menu_button.dart';
import 'package:flutter_portfolio/view/main/components/connect_button.dart';
import 'package:flutter_portfolio/view/main/components/toggle_button.dart';

import 'package:provider/provider.dart';
import '../../../main.dart';
import '../../../providers/theme_provider.dart';
import '../../../res/constants.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).theme;
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          // Padding(
          //   padding: const EdgeInsets.all(defaultPadding),
          //   child: !Responsive.isLargeMobile(context)
          //       ? Image.asset(
          //           'assets/images/triange_icon.png',
          //           color: theme.textColor,
          //         )
          //       : MenuButton(
          //           onTap: () => Scaffold.of(context).openDrawer(),
          //         ),
          // ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: MenuButton(
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          //if (Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(
            flex: 2,
          ),
          if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
          const Spacer(
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const ConnectButton(),
              SizedBox(
                width: defaultPadding,
              ),
              const ThemeToggleButton(),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
