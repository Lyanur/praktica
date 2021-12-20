import 'package:flutter/material.dart';
import 'package:practica/resources/textStyle.dart';

class advantagesUnit extends StatelessWidget {
  final String title;
  final String lorem;
  final String image;
  const advantagesUnit({Key? key,required this.title, required this.lorem, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 350,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          Image.asset('source/$image'),
          const SizedBox(height: 50,),
          Text(title, style: bayCurseTxtStyle,),
          const SizedBox(height: 50,),
          Text(lorem, style: loremTxtStyle,),
        ],
      ),
    );
  }
}
