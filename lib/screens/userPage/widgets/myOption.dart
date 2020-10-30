import 'package:flutter/material.dart';

class MyOption extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          FlatButton(
              onPressed: null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('我的優惠券'),
                  Text('>'),
                ],
              ),
          ),
          FlatButton(
            onPressed: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('我的優惠券'),
                Text('>'),
              ],
            ),
          ),
          FlatButton(
            onPressed: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('我的優惠券'),
                Text('>'),
              ],
            ),
          ),
          FlatButton(
            onPressed: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('我的優惠券'),
                Text('>'),
              ],
            ),
          ),          FlatButton(
            onPressed: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('我的優惠券'),
                Text('>'),
              ],
            ),
          ),
          FlatButton(
            shape: Border(
              bottom: BorderSide(
                color: Colors.black.withOpacity(0.2),width: 0.5
              )
            ),
            onPressed: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('我的優惠券'),
                Text('>'),
              ],
            ),
          ),
          FlatButton(
            onPressed: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('我的優惠券'),
                Text('>'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}