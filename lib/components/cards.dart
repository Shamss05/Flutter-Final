import 'package:flutter/material.dart';
class CardInfo extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  CardInfo({required this.title,required this.subTitle, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:[
            BoxShadow(
                offset: Offset(0,5),
                spreadRadius: 2,
                blurRadius: 8
            )
          ]
      ),
      child:   ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        leading: Icon(icon),
        trailing: Icon(icon, color: Color(0xFFFDD308),),
        tileColor: Colors.grey.shade200,

      ),
    );
  }
}
