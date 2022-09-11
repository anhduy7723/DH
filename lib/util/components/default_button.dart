import 'package:flutter/material.dart';
import 'package:project_dh/util/size_config.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  late String text;
  late VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth * 0.4,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: Colors.white,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontFamily: "Poopins-Regular",
              color: Colors.black,
              fontSize: getProportionateScreenWidth(14)),
        ),
        clipBehavior: Clip.hardEdge,
        elevation: 2,
        disabledColor: Colors.blue,
        disabledElevation: 10,
      ),
    );
  }
}
