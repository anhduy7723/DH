import 'package:flutter/material.dart';
import 'package:project_dh/util/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'Đức Hạnh',
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: Colors.black,
              fontWeight: FontWeight.normal),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
        )
      ],
    );
  }
}
