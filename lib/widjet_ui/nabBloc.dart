import 'package:flutter/cupertino.dart';
import 'package:practica/resources/text.dart';
import 'package:practica/resources/textStyle.dart';

import 'nav_bar.dart';

class NavBlock extends StatelessWidget {
  const NavBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: 660,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('source/main-screen__bgc.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                  child: Text(
                    firstCoursesTxt,
                    style: firstCoursesTxtStyle,
                  )),
            )),
        const MainNavBar(),
      ],
    );
  }
}
