import 'package:flutter/material.dart';
import 'package:shopee/models/home/statusItemList.dart';

class StatusItem extends StatefulWidget{
  final int Index;
  StatusItem(this.Index);
  @override
  _StatusItemState createState() => _StatusItemState();
}

class _StatusItemState extends State<StatusItem>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(height: 300,child: Text(statusItemList[widget.Index].mTitle),),
          Container(height: 300,child: Text(statusItemList[widget.Index].mTitle),),
          Container(height: 300,child: Text(statusItemList[widget.Index].mTitle),),
          Container(height: 300,child: Text(statusItemList[widget.Index].mTitle),),
        ],
      ),
    );
  }
}