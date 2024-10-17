import 'package:flutter/material.dart';
import 'package:final_project/screens/restaurant_detail.dart';


class RecommendedRestaurantsContainer extends StatelessWidget {
  const RecommendedRestaurantsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (restaurantDetail) => RestaurantDetail()));
      },
      child: Padding(padding: EdgeInsets.all(10),
        child: Container(
          width: 370,
          height: 160,
          decoration: BoxDecoration(color: Colors.yellow.shade700,borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/images/7355673.jpg',width: 120,),
              Column(
                children: [
                  SizedBox(height: 40,),
                  Text("Restaurant Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  SizedBox(height: 10,),
                  Text("Restaurant Type",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                ],
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),),
    );
  }
}
