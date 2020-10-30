import 'package:flutter/material.dart';

class SlideMenu extends StatelessWidget{
  final ScrollController _mController;
  SlideMenu(this._mController);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Scrollbar(
          controller: _mController,
          isAlwaysShown: true,
          child: ListView(
            controller: _mController,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(width: 300,child: Text('aaaa'),),
                      Container(width: 300,child: Text('bbb'),),
                      Container(width: 300,child: Text('ccc'),),
                    ],
                  ),
                  Row(
                    children: [
                      Container(width: 300,child: Text('111'),),
                      Container(width: 300,child: Text('222'),),
                      Container(width: 300,child: Text('3333'),),
                    ],
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}