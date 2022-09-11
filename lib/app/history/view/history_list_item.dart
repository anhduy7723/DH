import 'package:flutter/material.dart';
import 'package:project_dh/app/history/controller/modal/modal.dart';

class HistoryListItem extends StatelessWidget {
  final PointModal _pointModal;

  HistoryListItem(this._pointModal);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(_pointModal.list.toString()),
      trailing: Text(_pointModal.point.toString()),
    );
  }
}
