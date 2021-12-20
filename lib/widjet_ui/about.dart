import 'package:flutter/material.dart';
import 'package:practica/resources/text.dart';
import 'package:practica/resources/textStyle.dart';

class AboutMain extends StatelessWidget {
  const AboutMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('source/aboutimg.png'),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    whatAreWeDoingTxt,
                    style: whatAreWeDoingTxtStyle,
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Text(
                    loremTxt,
                    style: loremTxtStyle,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
