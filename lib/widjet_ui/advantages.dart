
import 'package:flutter/material.dart';
import 'package:practica/resources/text.dart';
import 'package:practica/resources/textStyle.dart';

import 'advantagesUnit.dart';

class advantagesMain extends StatelessWidget {
  const advantagesMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(getProfTxt, style: whatAreWeDoingTxtStyle,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            advantagesUnit(lorem: loremSmallTxt, title: workingSkillTxt, image: 'icon-1.png',),
            advantagesUnit(lorem: loremSmallTxt, title: workingTxt, image: 'icon-2.png',),
            advantagesUnit(lorem: loremSmallTxt, title: certificateTxt, image: 'icon-3.png',),
          ],
        )
      ],
    );
  }
}
