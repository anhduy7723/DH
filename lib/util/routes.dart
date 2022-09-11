import 'package:flutter/material.dart';
import 'package:project_dh/app/profile/view/profile_view.dart';
import 'package:project_dh/util/nav_bar.dart';

import '../app/history/view/history_view.dart';
import '../app/home/view/home_view.dart';
import 'bottom_nav_bar.dart';

class RouteView extends StatefulWidget {
  @override
  _RouteView createState() => _RouteView();
}

class _RouteView extends State<RouteView> {
  int _currentIndex = 0;
  final pages = [HomeView(), HistoryView(), NavBar(), ProfileView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 50,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.home),
          title: Text('Trang chủ'),
          activeColor: Colors.blue,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.calendar_month),
          title: Text('Lịch khám'),
          activeColor: Colors.blue,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.history),
          title: Text(
            'Tích điểm ',
          ),
          activeColor: Colors.blue,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.person),
          title: Text('Tài khoản'),
          activeColor: Colors.blue,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
