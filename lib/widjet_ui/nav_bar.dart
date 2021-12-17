import 'package:flutter/material.dart';
import 'package:practica/resources/text.dart';

class MainNavBar extends StatelessWidget {
  const MainNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              flex:1,
              child: Image.asset('source/logo.png')),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(homeTxt),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(courses),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(schedule),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(teachersTxt),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(newsTxt),
                ),
              ],
            ),
          ),
          const Expanded(
              flex: 1,
              child:  Text(loginTxt + '/' + singUp, textAlign: TextAlign.center,)),
        ],
      ),
    );
  }
}
