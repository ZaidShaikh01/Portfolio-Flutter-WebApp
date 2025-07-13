import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:provider/provider.dart';

import '../../../../providers/theme_provider.dart';
import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).theme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: theme.textColor),
          ),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'Firebase'),
        KnowledgeText(knowledge: 'Java'),
        KnowledgeText(knowledge: 'Data Structure & Analysis'),
        KnowledgeText(knowledge: 'Git, Github'),
      ],
    );
  }
}
