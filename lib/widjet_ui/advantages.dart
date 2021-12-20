
import 'package:flutter/material.dart';
import 'package:practica/resources/text.dart';
import 'package:practica/resources/textStyle.dart';

import 'advantagesUnit.dart';

class AdvantagesMain extends StatelessWidget {
  const AdvantagesMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(height: 50,),
        Text(getProfTxt, style: whatAreWeDoingTxtStyle, textAlign: TextAlign.center,),
        Wrap(
          children: const [
            advantagesUnit(lorem: loremSmallTxt, title: workingSkillTxt, image: 'icon-1.png',),
            advantagesUnit(lorem: loremSmallTxt, title: workingTxt, image: 'icon-2.png',),
            advantagesUnit(lorem: loremSmallTxt, title: certificateTxt, image: 'icon-3.png',),
          ],
        ),
        const SizedBox(height: 50,),
      ],
    );
  }
}
