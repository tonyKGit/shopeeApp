import 'package:flutter/material.dart';

class StatusListItem extends StatelessWidget{
  final bool isActive;
  final String title;
  StatusListItem(this.isActive, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        shape: Border(
            bottom: BorderSide(
                color: isActive ? Colors.orange :Colors.transparent,
                width: isActive ? 0.8 : 0
            )
        ),
        child: Text(this.title,
          style: TextStyle(color: isActive ? Colors.orange : Colors.black),
        ),
      ),
    );
  }
}