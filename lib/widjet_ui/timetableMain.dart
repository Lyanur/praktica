import 'package:flutter/material.dart';
import 'package:practica/resources/text.dart';
import 'package:practica/resources/textStyle.dart';

class TimetableMain extends StatelessWidget {
  const TimetableMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 100,
        ),
        Image.asset('source/icon-heading90.png'),
        Text(
          programTxt,
          style: whatAreWeDoingTxtStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          courseSucTxt,
          style: loremTxtStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 100,
        ),
        Image.asset('source/program.png'),
        const SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
