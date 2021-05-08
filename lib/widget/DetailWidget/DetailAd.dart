import 'package:flutter/material.dart';

class DetailAd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .061,
      child: Image.network(
        "https://images-eu.ssl-images-amazon.com/images/G/31/img20/Vernac13th/3000x300_V2_Eng_2x._CB412597113_.jpg",
      ),
    );
  }
}
