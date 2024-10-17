import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {

  final function;
  final icon;

  ButtonContainer({this.function, this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: 50,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}