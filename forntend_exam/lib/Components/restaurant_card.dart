import 'package:flutter/material.dart';
import 'package:weather_api/Styles/app_layout.dart';
import 'package:weather_api/Styles/app_styles.dart';

// ignore: must_be_immutable
class RestaurantCard extends StatelessWidget {
  final String restaurantImage;
  final String restaurantLogo;
  final String restaurantName;
  final String restaurantDistance;
  final double restaurantRating;
  final int reviewersCount;

  const RestaurantCard({
    super.key,
    required this.restaurantImage,
    required this.restaurantLogo,
    required this.restaurantName,
    required this.restaurantDistance,
    required this.restaurantRating,
    required this.reviewersCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 185,
      width: MyAppLayout().getSize(context).width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            color: const Color.fromARGB(255, 226, 226, 226), width: 1),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 115,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(restaurantImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 10),
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(restaurantLogo),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        restaurantName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            color: Styles.primaryColor,
                            size: 18,
                          ),
                          Text(restaurantDistance),
                          const Icon(
                            Icons.star_rounded,
                            color: Color.fromARGB(255, 197, 133, 188),
                          ),
                          Text("$restaurantRating",
                              style: TextStyle(color: Styles.primaryColor)),
                          Text("($reviewersCount)",
                              style: const TextStyle(color: Colors.grey)),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 25,
                  width: 78,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(255, 18, 77, 149),
                          Color.fromARGB(255, 29, 130, 213),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(3)),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.verified_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Promoted",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                        color: Color.fromARGB(255, 195, 195, 195),
                        blurRadius: 8.0)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
