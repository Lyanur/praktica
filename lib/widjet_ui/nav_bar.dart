import 'package:flutter/material.dart';
import 'package:practica/resources/text.dart';

class MainNavBar extends StatelessWidget {
  const MainNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Image.network('https://disk.yandex.ru/i/FLlv6gnEsRsD0w')),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(homeTxt),
              Text(teachersTxt),
              Text(newsTxt),
            ],
          ),
        ),
        const Expanded(
          flex: 2,
          child: Text(loginTxt + '/' + singUp),
        ),
      ],
    );
  }
}
