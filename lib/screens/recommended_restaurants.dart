import 'package:flutter/material.dart';
import 'package:final_project/components/recommended_restaurants_container.dart';

class RecommendedRestaurants extends StatelessWidget {
  const RecommendedRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.orange.shade600,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text(
                    "Recommended Restaurants",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 5),
                RecommendedRestaurantsContainer(),
                SizedBox(height: 10),
                RecommendedRestaurantsContainer(),
                SizedBox(height: 10),
                RecommendedRestaurantsContainer(),
                SizedBox(height: 10),
                RecommendedRestaurantsContainer(),
                SizedBox(height: 10),
                RecommendedRestaurantsContainer(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}








