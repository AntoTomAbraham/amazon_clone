import 'package:amazon_app/widget/AppBar.dart';
import 'package:amazon_app/widget/Categories.dart';
import 'package:amazon_app/widget/Deals.dart';
import 'package:amazon_app/widget/ImageCaursol.dart';
import 'package:amazon_app/widget/ItemsGrid.dart';
import 'package:amazon_app/widget/OfferImage.dart';
import 'package:amazon_app/widget/responseScroll.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          AppBarr(),
          ResponseScroll(),
          ImageCaursol(),
          OfferImage(),
          Categories(),
          Deals(),
          ItemGrid(),
        ],
      ),
    );
  }
}
