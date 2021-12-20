import 'package:flutter/material.dart';
import 'package:practica/resources/text.dart';
import 'package:practica/resources/textStyle.dart';
import 'package:practica/widjet_ui/about.dart';
import 'package:practica/widjet_ui/advantages.dart';
import 'package:practica/widjet_ui/hellowsaidbar.dart';
// import 'package:practica/resources/text.dart';
import 'package:practica/widjet_ui/nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          color: Colors.black,
          height: height,
          width: width,
          child: Stack(
            children: [
              ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: width,
                          height: 660,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('source/main-screen__bgc.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                              child: Text(
                            firstCoursesTxt,
                            style: firstCoursesTxtStyle,
                          ))),
                      const HelloSidBar(),
                      const AboutMain(),
                      const advantagesMain(),
                    ],
                  ),
                ],
              ),
              const MainNavBar(),
            ],
          )),
    );
  }
}
