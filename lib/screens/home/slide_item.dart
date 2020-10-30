import 'package:flutter/material.dart';
import '../../models/home/slide.dart';

class SlideItem extends StatelessWidget{
  final int index;
  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Container(
        //   height: 200,
        //   color: Colors.orange,
        //   child: Text(slideList[index].mTitle),
        // )
        Expanded(
            child: Container(
              height: 200,
              color: Colors.orange,
              child: Text(slideList[index].mTitle),
            )
        )
      ],
    );
  }
}