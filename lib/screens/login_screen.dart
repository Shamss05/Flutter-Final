import 'package:final_project/screens/sign-up.dart';
import 'package:flutter/material.dart';
import 'package:final_project/components/round_textfield.dart';
class LoginView extends StatefulWidget {
  static String id='LoginView';
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

 TextEditingController txtEmail=TextEditingController();
 TextEditingController txtPass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80,),
              Text(
                'Login',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30),),
              SizedBox(height: 10,),
              Text(
                'Add your details to login',
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
              SizedBox(height: 30,),
              RoundTextField(hintText: 'Your Email',controller:txtEmail , keyboardType:TextInputType.emailAddress,
                  obscureText: false),
              SizedBox(height: 20,),
              RoundTextField(hintText: 'Password',
                  controller:txtPass,
                  keyboardType:TextInputType.visiblePassword,
                  obscureText: true),
              SizedBox(height: 20,),

              Container(
                width: media.width,
                // width: 200,
                height: 55,
                child:MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  onPressed: (){
                  },
                  color: Colors.orange.shade600,
                  child: Text('Login',
                    style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),),
              ),
              SizedBox(height: 5,),
              TextButton(onPressed: (){},
                  child: Text(
                    'Forget Your Password?',style: TextStyle(color:Colors.black,fontWeight: FontWeight.w500,fontSize: 16),),
              ),
              SizedBox(height: 20,),
              // TextButton(onPressed: (){},
              //   child: Text(
              //     'or Login With',style: TextStyle(color:Colors.black,fontWeight: FontWeight.w500,fontSize: 16),),
              // ),
              // SizedBox(height: 30,),
              // InkWell(
              //   onTap: (){},
              //   child: Container(
              //     height: 55,
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //       color: Color(0xFF3376B3),
              //       borderRadius: BorderRadius.circular(28),
              //     ),
              //     child: Text(
              //       'Login with Facebook',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 16,
              //         fontWeight: FontWeight.w500,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 20,),
              // InkWell(
              //   onTap: (){},
              //   child: Container(
              //     height: 55,
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //       color: Color(0xFF3376B3),
              //       borderRadius: BorderRadius.circular(28),
              //     ),
              //     child: Text(
              //       'Login with Google',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 16,
              //         fontWeight: FontWeight.w500,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()), // Directly push LoginView
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don`t have an Account? ',style: TextStyle(color:Colors.black,fontWeight: FontWeight.w700,fontSize: 16),),
                    Text(
                      'Sin Up',style: TextStyle(color:Colors.orange.shade600,fontWeight: FontWeight.w700,fontSize: 16),),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
