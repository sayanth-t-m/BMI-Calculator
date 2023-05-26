import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.customw,required this.onPress});

  final Color colour;
 final Widget customw;
 final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: customw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: colour,
        ),
        margin: EdgeInsets.all(15),
      ),
    );
  }
}
