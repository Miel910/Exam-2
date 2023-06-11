import 'package:flutter/material.dart';
import 'package:weather_api/Styles/app_styles.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget(
      {super.key, required this.service, required this.serviceImage});

  final String service;
  final String serviceImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      height: 70,
      width: 100,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              serviceImage,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Styles.primaryColor,
                ],
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: Text(service))
        ],
      ),
    );
  }
}
