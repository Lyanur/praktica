import 'package:flutter/material.dart';
import 'package:practica/resources/text.dart';
import 'package:practica/resources/textStyle.dart';
import 'package:practica/widjet_ui/partnersUnit.dart';

class PartnersMain extends StatelessWidget {
  const PartnersMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SizedBox(
                width: 120,
                height: 120,
                child: Image.asset('source/icon-heading.png', )),
            Text(partnersLogoTxt, style: whatAreWeDoingTxtStyle, textAlign: TextAlign.center,)
          ],
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/6),
          child: Wrap(
            children: const [
              PartnersUnit(img: 'Partners.png',),
              PartnersUnit(img: 'Partners.png',),
              PartnersUnit(img: 'Partners.png',),
              PartnersUnit(img: 'Partners.png',),
              PartnersUnit(img: 'Partners.png',),
              PartnersUnit(img: 'Partners.png',),
              PartnersUnit(img: 'Partners.png',),
              PartnersUnit(img: 'Partners.png',),
            ],
          ),
        ),
      ],
    );
  }
}
