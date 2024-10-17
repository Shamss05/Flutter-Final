import 'package:flutter/material.dart';
class RoundTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  RoundTextField({required this.hintText,required this.controller,required this.keyboardType,required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xFFF0F0F0)
      ),
      child:TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          hintStyle:TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14),
          // labelText: 'Enter your text',
        ),

        onChanged: (value) {
          print('Text field value: $value');
        },
      )
      ,
    );
  }
}
