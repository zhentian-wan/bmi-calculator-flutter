import 'package:flutter/material.dart';

class SelfCard extends StatelessWidget {
  // only set once and cannot be changed
  final Color colour;
  final Widget cardChild;
  Function onTap;
  SelfCard({@required this.colour, this.cardChild, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
