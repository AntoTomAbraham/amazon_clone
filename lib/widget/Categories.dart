import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          imageIcon(
              "https://images-na.ssl-images-amazon.com/images/G/01/AmazonExports/Projects/HelpPage/BubbleShoveler/English/Fuji_Bubble_8Languages_en_US_updated_2x._CB445837684_.png"),
          imageIcon(
              "https://images-na.ssl-images-amazon.com/images/G/01/AmazonExports/Fuji/2019/October/BubbleShoveler/AIS_Bubble_Currency_en_US_2X._CB451228332_.jpg"),
          imageIcon(
              "https://images-na.ssl-images-amazon.com/images/G/01/AmazonExports/Fuji/2019/October/BubbleShoveler/AIS_Bubble_SecurePayment_en_US_2X._CB451228335_.jpg"),
          imageIcon(
              "https://images-na.ssl-images-amazon.com/images/G/01/AmazonExports/Fuji/2019/October/BubbleShoveler/AIS_Bubble_ImportFees_V2_en_US_2x._CB447531871_.png"),
          imageIcon(
              "https://images-na.ssl-images-amazon.com/images/G/01/AmazonExports/Fuji/2019/October/BubbleShoveler/AIS_Bubble_TrackPackage_en_US_2X._CB451228334_.jpg"),
          imageIcon(
              "https://images-na.ssl-images-amazon.com/images/G/01/AmazonExports/Fuji/2019/October/BubbleShoveler/AIS_Bubble_247CS_V2_en_US_2x._CB447531888_.png"),
          imageIcon(
              "https://images-na.ssl-images-amazon.com/images/G/01/AmazonExports/Projects/HelpPage/BubbleShoveler/English/Fuji_Bubble_8Languages_en_US_updated_2x._CB445837684_.png"),
          imageIcon(
              "https://images-na.ssl-images-amazon.com/images/G/01/AmazonExports/Fuji/2019/October/BubbleShoveler/AIS_Bubble_Currency_en_US_2X._CB451228332_.jpg"),
        ],
      ),
    );
  }

  Widget imageIcon(String image) {
    return Container(
      height: 60,
      width: 90,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
