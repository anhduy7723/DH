import 'package:flutter/material.dart';

import '../app/history/view/history_view.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBar createState() => _NavBar();
}

class _NavBar extends State<NavBar> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(2);
  }

  static const List<Tab> _tab = [
    Tab(
      child: Center(
        child: Text(
          "Tất cả lịch sử",
          style: TextStyle(fontSize: 13),
        ),
      ),
    ),
    Tab(
      child: Center(
        child: Text(
          "Đã nhận",
          style: TextStyle(fontSize: 13),
        ),
      ),
    ),
    Tab(
      child: Center(
        child: Text(
          "Đã dùng",
          style: TextStyle(fontSize: 13),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tích điểm"),
            bottom: TabBar(
              tabs: _tab,
            ),
          ),
          body: TabBarView(
            children: [
              HistoryView(),
              HistoryView(),
              HistoryView(),
            ],
          ),
        ));
  }
}
