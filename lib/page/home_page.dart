import 'package:flutter/material.dart';
import 'package:practica/resources/text.dart';
import 'package:practica/resources/textStyle.dart';
import 'package:practica/widjet_ui/about.dart';
import 'package:practica/widjet_ui/advantages.dart';
import 'package:practica/widjet_ui/hellowsaidbar.dart';
import 'package:practica/widjet_ui/nabBloc.dart';
// import 'package:practica/resources/text.dart';
import 'package:practica/widjet_ui/nav_bar.dart';
import 'package:practica/widjet_ui/partnersMain.dart';
import 'package:practica/widjet_ui/timetableMain.dart';

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
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  NavBlock(),
                  HelloSidBar(),
                  AboutMain(),
                  AdvantagesMain(),
                  PartnersMain(),
                  TimetableMain(),
                ],
              ),
            ],
          )),
    );
  }
}
