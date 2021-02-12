import 'package:flutter/material.dart';
import 'package:shopee/screens/userPage/widgets/buyListEvent.dart';
import 'package:shopee/screens/userPage/widgets/myOption.dart';
import 'package:shopee/screens/userPage/widgets/settingOption.dart';

class InPurchase extends StatefulWidget{
  @override
  _InPurchaseState createState() => _InPurchaseState();
}

class _InPurchaseState extends State<InPurchase>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        BuyListEvent(),
        SizedBox(height: 10),
        MyOption(),
        SizedBox(height: 10),
        SettingOption()
      ],
    );
  }
}