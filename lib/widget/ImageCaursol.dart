import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ImageCaursol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150.0,
        width: 350.0,
        child: Carousel(
          images: [
            NetworkImage(
                'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/Samsung/MayArt21/Family/Copy1/D22718071_IN_WLME_MayArt_April_SamsungGalaxy_Family_PC._CB670676524_.jpg'),
            NetworkImage(
                'https://images-eu.ssl-images-amazon.com/images/G/31/img19/LATV_hero/MayArt-hero---coupon-discount_1500x600_4._CB671027617_.jpg'),
            NetworkImage(
                'https://images-eu.ssl-images-amazon.com/images/G/31/img20/Events/GW/milaap/hero/Milaap_Hero_pc2x._CB670835918_.jpg'),
            NetworkImage(
                'https://images-eu.ssl-images-amazon.com/images/G/31/img21/CEPC/MayArt/GW/Heros/V2/Ecc_accs_Tallhero_3000x1200._CB671075384_.jpg'),
          ],
          dotSize: 4.0,
          dotSpacing: 15.0,
          dotColor: Colors.white,
          indicatorBgPadding: 8.0,
          dotBgColor: Colors.transparent,
          borderRadius: false,
        ));
  }
}
