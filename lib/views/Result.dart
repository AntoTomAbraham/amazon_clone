import 'package:amazon_app/widget/AppBar.dart';
import 'package:amazon_app/widget/ResultWidget/FilterWidget.dart';
import 'package:amazon_app/widget/ResultWidget/ResultText.dart';
import 'package:amazon_app/widget/ResultWidget/itemsWiget.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          AppBarr(),
          FilterWidget(),
          Divider(thickness: 2, color: Colors.grey[200]),
          ResultText(),
          ItemsWidget(),
        ],
      ),
    );
  }
}
