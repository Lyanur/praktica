import 'package:flutter/material.dart';

class PartnersUnit extends StatelessWidget {
  final String img;
  const PartnersUnit({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 180,
        height: 80,
        child: Image.asset('source/$img'));
  }
}
