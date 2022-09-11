import 'package:flutter/material.dart';
import 'package:project_dh/util/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RouteView(),
    );
  }
}
