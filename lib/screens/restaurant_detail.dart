import 'package:flutter/material.dart';
import 'package:final_project/components/restaurant_detail_container.dart';

class RestaurantDetail extends StatelessWidget {
  const RestaurantDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.orange.shade600,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 60,),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(color: Colors.white24,borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                    )
                  ],
                ),
                Image.asset('assets/images/7355673.jpg', width: 130),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Restaurant Name",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Restaurant Type",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(width: 5),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 10),
                RestaurantDetailContainer(),
                RestaurantDetailContainer(),
                RestaurantDetailContainer(),
                RestaurantDetailContainer(),
                RestaurantDetailContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

