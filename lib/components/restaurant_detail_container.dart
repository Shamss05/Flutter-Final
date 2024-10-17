import 'package:flutter/material.dart';
import 'package:final_project/screens/items.dart';

class RestaurantDetailContainer extends StatelessWidget {
  const RestaurantDetailContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (items) => Items()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Item Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    Text("Ingredients",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                  ],
                ),
                Image.asset('assets/images/greek-salad-with-olives-bell-pepper.jpg',width: 120,),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
          ),
        ],
      ),);
  }
}
