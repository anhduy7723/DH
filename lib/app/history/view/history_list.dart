import 'package:flutter/material.dart';
import 'package:project_dh/app/history/view/history_list_item.dart';

import '../controller/modal/modal.dart';

class HistoryList extends StatelessWidget {
  late List<PointModal> _pointModal;

  HistoryList(this._pointModal);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: _buildHistoryList(),
    );
  }

  List<HistoryListItem> _buildHistoryList() {
    return _pointModal.map((point) => HistoryListItem(point)).toList();
  }
}
