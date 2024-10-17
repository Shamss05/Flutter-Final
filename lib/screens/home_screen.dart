import 'package:final_project/screens/sign-up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class HomeScreen extends StatelessWidget{
 // static String id='HomeScreen';
  @override
  Widget build(BuildContext context){
    var media=MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Container(
            height: 110,
            decoration: BoxDecoration(color: Colors.orange.shade600,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Text('DELIVERY FOOD',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
          SizedBox(height: 80,),
          // Text('DELIVERY FOOD',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          Image.asset(
            'assets/images/7355673.jpg',
            // width: media.width,
            // height: media.height,
            // fit: BoxFit.cover,
          ),
          SizedBox(height: 50,),
          Container(
            width: media.width*0.8,
            // width: 200,
            height: 55,
            child:MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()), // Directly push LoginView
                );
              },
              color: Colors.orange.shade600,
              child: Text('Login',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),),
          ),
          SizedBox(height: 30,),
          Container(
            width: media.width*0.8,
            height: 60,
            child:MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()), // Directly push LoginView
                );
              },
              color: Colors.orange.shade600,
              child: Text('Create an account',
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),),
          )
        ],

      ),
    );
  }
}
