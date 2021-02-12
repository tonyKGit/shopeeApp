import 'package:flutter/material.dart';

class SettingOption extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
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
                Text('帳號設定'),
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
                Text('幫助中心'),
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
                Text('與客服即時交談'),
                Text('>'),
              ],
            ),
          ),
        ],
      ),
    );
  }

}