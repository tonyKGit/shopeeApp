import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget{
  final bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 10 : 6,
      width: isActive ? 10 : 6,
      decoration: BoxDecoration(
        color: isActive ? Theme.of(context).primaryColor : Colors.grey ,
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}