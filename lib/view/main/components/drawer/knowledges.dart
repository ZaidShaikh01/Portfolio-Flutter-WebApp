import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: textColor),
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
