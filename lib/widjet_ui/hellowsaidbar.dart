import 'package:flutter/material.dart';
import 'package:practica/resources/text.dart';
import 'package:practica/resources/textStyle.dart';

class HelloSidBar extends StatefulWidget {
  const HelloSidBar({Key? key}) : super(key: key);

  @override
  State<HelloSidBar> createState() => _HelloSidBarState();
}

class _HelloSidBarState extends State<HelloSidBar> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if(width>400){
      return Container(
        height: 130,
        decoration: const BoxDecoration(color: Color(0xFF121212)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment
                      .centerRight, // 10% of the width, so there are ten blinds.
                  colors: <Color>[
                    Color(0xffDF5950),
                    Color(0xff451046)
                  ], // red to yellow
                  tileMode:
                  TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 8),
                child: Text(
                  bayCurse,
                  style: bayCurseTxtStyle,
                ),
              ),
            ),
            SizedBox(
              width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        allMembersTxt,
                        style: memberTxtStyle,
                      ),
                      Text(
                        '200',
                        style: memberTxtStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        successMembersTxt,
                        style: bayCurseTxtStyle,
                      ),
                      Text(
                        '190',
                        style: bayCurseTxtStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }else {
      return Container(
        height: 130,
        decoration: const BoxDecoration(color: Color(0xFF121212)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment
                      .centerRight, // 10% of the width, so there are ten blinds.
                  colors: <Color>[
                    Color(0xffDF5950),
                    Color(0xff451046)
                  ], // red to yellow
                  tileMode:
                  TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 8),
                child: Text(
                  bayCurse,
                  style: bayCurseTxtStyle,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      allMembersTxt,
                      style: memberTxtStyle,
                    ),
                    Text(
                      '200',
                      style: memberTxtStyle,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      successMembersTxt,
                      style: bayCurseTxtStyle,
                    ),
                    Text(
                      '190',
                      style: bayCurseTxtStyle,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

  }
}
