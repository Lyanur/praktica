import 'package:flutter/material.dart';
import 'package:practica/resources/text.dart';
import 'package:practica/resources/textStyle.dart';

class AboutMain extends StatelessWidget {
  const AboutMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Image.asset('source/aboutimg.png'),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 600,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      whatAreWeDoingTxt,
                      style: whatAreWeDoingTxtStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Center(
                      child: Text(
                        loremTxt,
                        style: loremTxtStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
