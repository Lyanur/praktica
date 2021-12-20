import 'package:flutter/material.dart';
import 'package:practica/resources/text.dart';
import 'package:practica/resources/textStyle.dart' as st;

class MainNavBar extends StatelessWidget {
  const MainNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(flex: 1, child: Image.asset('source/logo.png')),
          Expanded(
            flex: 5,
            child: Center(
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(homeTxt, style: st.logoStyle),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(courses, style: st.logoStyle),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(schedule, style: st.logoStyle),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(teachersTxt, style: st.logoStyle),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(newsTxt, style: st.logoStyle),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                  height: 40,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment
                          .centerRight, // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Color(0xffC89AFC),
                        Color(0xff7C6AFA)
                      ], // red to yellow
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    ),
                  ),
                  child: const Center(
                      child: Text(
                    loginTxt,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  )))),
        ],
      ),
    );
  }
}
