import 'package:flutter/material.dart';

class ResponseScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          imageIcon(
              "https://images-eu.ssl-images-amazon.com/images/G/31/img20/Events/GW/Covid/shovler/1x/Shoveler_covid_giving_1x._CB671053910_.jpg"),
          imageIcon(
              "https://images-eu.ssl-images-amazon.com/images/G/31/img20/Events/GW/Covid/shovler/2X/Shoveler_covid_O2_2x._CB671054677_.jpg"),
          imageIcon(
              "https://images-eu.ssl-images-amazon.com/images/G/31/img20/Events/GW/Covid/shovler/2X/Shoveler_covid_donation_2x._CB671054677_.jpg"),
          imageIcon(
              "https://images-eu.ssl-images-amazon.com/images/G/31/img20/Events/GW/Covid/shovler/2X/Shoveler_covid_vaccine_2x._CB671054677_.jpg"),
          imageIcon(
              "https://images-eu.ssl-images-amazon.com/images/G/31/img20/Events/GW/Covid/shovler/2X/Shoveler_covid_delivery__return_2x._CB671054677_.jpg"),
          imageIcon(
              "https://images-eu.ssl-images-amazon.com/images/G/31/img20/Events/GW/Covid/shovler/1x/Shoveler_covid_giving_1x._CB671053910_.jpg"),
          imageIcon(
              "https://images-eu.ssl-images-amazon.com/images/G/31/img20/Events/GW/Covid/shovler/2X/Shoveler_covid_O2_2x._CB671054677_.jpg"),
          imageIcon(
              "https://images-eu.ssl-images-amazon.com/images/G/31/img20/Events/GW/Covid/shovler/2X/Shoveler_covid_donation_2x._CB671054677_.jpg"),
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
