import 'package:flutter/material.dart';
import 'package:project_dh/app/history/controller/modal/modal.dart';
import 'package:project_dh/app/history/view/history_list.dart';

class HistoryView extends StatefulWidget {
  @override
  _HistoryView createState() => _HistoryView();
}

class _HistoryView extends State<HistoryView> {
  _buildHistoryList() {
    return <PointModal>[
      const PointModal(
        list: 'Giao dịch tại cửa hàng',
        point: 1500,
      ),
      const PointModal(
        list: 'Giao dịch tại cửa hàng',
        point: 1500,
      ),
      const PointModal(
        list: 'Giao dịch tại cửa hàng',
        point: 1500,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HistoryList(_buildHistoryList()),
    );
  }
}
