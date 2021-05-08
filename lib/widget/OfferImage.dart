import 'package:flutter/material.dart';

class OfferImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Image.network(
        "https://images-eu.ssl-images-amazon.com/images/G/31/img20/Wireless/Cnnjpp/OnePlus_9Series/may2ndr/revisedop/xcm_banners_summersale_2021_desktop-1500x200-bg-headline-subtext-bg-16j0s_1500x200_in-en.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
