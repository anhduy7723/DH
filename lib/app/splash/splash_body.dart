import 'package:flutter/material.dart';
import 'package:project_dh/app/auth/login_view.dart';
import 'package:project_dh/app/splash/splash_content.dart';

import '../../util/components/default_button.dart';
import '../../util/size_config.dart';

class SplashBody extends StatefulWidget {
  @override
  _SplashBody createState() => _SplashBody();
}

class _SplashBody extends State<SplashBody> {
  int indexpages = 0;
  List<Map<String, String>> data = [
    {
      'text': "Chào mừng đến nha khoa Đức Hạnh",
      'image': "assets/img/logo.png",
    },
    {
      'text': "Chào mừng đến nha khoa Đức Hạnh",
      'image': "assets/img/background.png",
    },
    {
      'text': "Chào mừng đến nha khoa Đức Hạnh",
      'image': "assets/img/logo.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
                itemBuilder: (context, index) => SplashContent(
                      image: data[index]["image"],
                      text: data[index]["text"],
                    )),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            data.length - 1, (index) => buildDot(index))),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                        text: "Tiếp theo",
                        press: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginView()));
                          });
                        }),
                    Spacer()
                  ],
                ),
              ))
        ],
      ),
    ));
  }

  AnimatedContainer buildDot(int? index) {
    return AnimatedContainer(
      duration: Duration(minutes: 2),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: indexpages == index ? 20 : 6,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
    );
  }
}
