import 'package:flutter/material.dart';

import '../../../util/size_config.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeView createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/img/background.png",
            width: SizeConfig.screenWidth,
          ),
          Container(
            margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.3),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: ListView(
              primary: true,
              children: [
                Center(
                    child: Text(
                  "Dịch vụ của chúng tôi",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
                Divider(height: 2, color: Colors.grey),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.all(13),
                            child: Icon(
                              Icons.calendar_month,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Lịch làm việc',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.all(13),
                            child: Icon(
                              Icons.point_of_sale,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Tích điểm',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
