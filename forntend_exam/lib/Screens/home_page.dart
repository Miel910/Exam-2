import 'package:flutter/material.dart';
import 'package:weather_api/Components/Buttons/filter_button.dart';
import 'package:weather_api/Components/restaurant_card.dart';
import 'package:weather_api/Styles/app_styles.dart';

import '../Components/Buttons/appbar_button.dart';
import '../Components/categories_widget.dart';
import '../Components/image_slide_show.dart';
import '../Components/my_search_bar.dart';
import '../Components/services_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // App bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppbarButton(categoryName: "Delivery"),
                      AppbarButton(categoryName: "Pickup"),
                      InkWell(
                          child: Container(
                        height: 10,
                        width: 140,
                      ))
                    ],
                  ),
                  const SizedBox(height: 15),

                  // Search bar
                  const MySearchBar(
                    hintText: "Search for Dishes, Resturants and Reservations",
                  ),
                  const SizedBox(height: 15),

                  // Image slider show
                  const ImageSlideShow(slideImage: "party-box-image.jpg"),
                  const SizedBox(height: 15),

                  // Title
                  Text("Try with us", style: Styles.headLineStyle2),

                  // Services scroll view
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ServicesWidget(
                          service: "Reservations Service",
                          serviceImage: "party-box-image.jpg",
                        ),
                        ServicesWidget(
                          service: "Gift Service",
                          serviceImage: "raseef4-image.jpg",
                        ),
                        ServicesWidget(
                          service: "Catering Service",
                          serviceImage: "forn-wa-saj-image.jpg",
                        ),
                        ServicesWidget(
                          service: "Donation",
                          serviceImage: "party-box-image.jpg",
                        ),
                      ],
                    ),
                  ),

                  // Categories scroll view
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoriesWidget(
                          category: "Delivery...",
                          categoryImage: "delivery.jpg",
                        ),
                        CategoriesWidget(
                            category: "Gathering",
                            categoryImage: "gathering.png"),
                        CategoriesWidget(
                            category: "Breakfast",
                            categoryImage: "breakfast.png"),
                        CategoriesWidget(
                            category: "Bakery", categoryImage: "bakery.png"),
                        CategoriesWidget(
                            category: "Sweets", categoryImage: "sweets.png"),
                        CategoriesWidget(
                            category: "Coffee", categoryImage: "breakfast.png"),
                        CategoriesWidget(
                            category: "Juices", categoryImage: "bakery.png"),
                        CategoriesWidget(
                            category: "Flowers...",
                            categoryImage: "sweets.png"),
                        CategoriesWidget(
                            category: "Cake", categoryImage: "breakfast.png"),
                        CategoriesWidget(
                            category: "Loqaimat...",
                            categoryImage: "bakery.png"),
                        CategoriesWidget(
                            category: "Healthy", categoryImage: "sweets.png"),
                        CategoriesWidget(
                            category: "Ice Cream",
                            categoryImage: "breakfast.png"),
                        CategoriesWidget(
                            category: "Offers", categoryImage: "bakery.png"),
                        CategoriesWidget(
                            category: "Top Rated", categoryImage: "sweets.png"),
                        CategoriesWidget(
                            category: "Market", categoryImage: "breakfast.png"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),

                  // Title
                  Text(
                    "Chefz Nearby You",
                    style: Styles.headLineStyle2,
                  ),
                  const SizedBox(height: 15),

                  // Filters scroll view
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FilterButton(categoryName: "All"),
                        FilterButton(categoryName: "Start with Zero SR"),
                        FilterButton(categoryName: "Up to 50% off"),
                        FilterButton(categoryName: "Most Popular"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),

                  // Restaurants cards
                  const RestaurantCard(
                    restaurantImage: "forn-wa-saj-image.jpg",
                    restaurantLogo: "forn-wa-saj-logo.jpeg",
                    restaurantName: "Forn Wa Saj | فرن وصاج",
                    restaurantDistance: "8.90 km",
                    restaurantRating: 4.6,
                    reviewersCount: 922,
                  ),

                  const RestaurantCard(
                    restaurantImage: "party-box-image.jpg",
                    restaurantLogo: "party-box-logo.jpg",
                    restaurantName: "Party Box | بارتي بوكس",
                    restaurantDistance: "6.30 km",
                    restaurantRating: 4.6,
                    reviewersCount: 275,
                  ),

                  const RestaurantCard(
                    restaurantImage: "raseef4-image.jpg",
                    restaurantLogo: "raseef4-logo.jpg",
                    restaurantName: "Raseef4 | رصيف 4",
                    restaurantDistance: "6.80 km",
                    restaurantRating: 4.3,
                    reviewersCount: 337,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
