import 'package:amazon_app/views/Result.dart';
import 'package:flutter/material.dart';

class ItemGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.white,
      child: GridView.count(
        shrinkWrap: true,
        primary: true,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Result()),
              );
            },
            child: offerContainer(
                "https://images-eu.ssl-images-amazon.com/images/G/31/in-certifiedrefurbished/xcm_banners_01_gwqcpc_372x232_in-en._SY232_CB655161241_.jpg",
                "HeadPhones"),
          ),
          offerContainer(
              "https://images-eu.ssl-images-amazon.com/images/G/31/in-certifiedrefurbished/xcm_banners_02_gwqcpc_372x232_in-en._SY232_CB655161242_.jpg",
              "Laptops"),
          offerContainer(
              "https://images-eu.ssl-images-amazon.com/images/G/31/in-certifiedrefurbished/xcm_banners_03_gwqcpc_372x232_in-en._SY232_CB655161235_.jpg",
              "Monitors"),
          offerContainer(
              "https://images-eu.ssl-images-amazon.com/images/G/31/in-certifiedrefurbished/xcm_banners_04_gwqcpc_372x232_in-en._SY232_CB655161239_.jpg",
              "Routers"),
        ],
      ),
    );
  }

  Widget offerContainer(String image, String text) {
    return Container(
      width: 80,
      color: Colors.white,
      height: 140,
      child: Column(
        children: <Widget>[
          Image.network(
            image,
          ),
          Text(text),
        ],
      ),
    );
  }
}
