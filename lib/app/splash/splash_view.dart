import 'package:flutter/material.dart';
import 'package:project_dh/app/splash/splash_body.dart';

import '../../util/size_config.dart';

class SplashView extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SplashBody(),
    );
  }
}
