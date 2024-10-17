import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_project/components/cards.dart';
class ProfileScreen extends StatelessWidget {
  static String id='ProfileScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Padding(
           padding: EdgeInsets.all(20),
           child: Column(
            children: [
              SizedBox(height: 70,),
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/images/photo_2024-10-04_13-58-16.jpg'),
              ),
              SizedBox(height: 40,),

            CardInfo(title: 'Name', subTitle: 'Ahmed', icon: Icons.person_outline),
            SizedBox(height: 20,),
            CardInfo(title: 'Phone', subTitle: '01023456789', icon: Icons.phone),
            SizedBox(height: 20,),
            CardInfo(title: 'Email', subTitle: 'ahmed@gmail.com', icon: Icons.email),
            SizedBox(height: 20,),
            CardInfo(title: 'Address', subTitle: 'Cairo', icon: Icons.add_location_rounded),
              SizedBox(height: 80,),
              // Container(
              //   width: 200,
              //   height: 60,
              //   child:MaterialButton(
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(15)
              //     ),
              //     onPressed: (){
              //     },
              //     color: Color(0xFFFDD308),
              //     child: Text('GET STARTED',
              //       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),),
              // ),

            ],
        ),
         ),

    );
  }
}
