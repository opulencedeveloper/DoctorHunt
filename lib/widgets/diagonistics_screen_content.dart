import 'package:flutter/material.dart';

import './diagonistics_top_content.dart';
import './recommend.dart';

class DiagonisticsScreenContent extends StatelessWidget {
  const DiagonisticsScreenContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: const [DiagonisticsTopContent(), Recommend()]);
  }
}
