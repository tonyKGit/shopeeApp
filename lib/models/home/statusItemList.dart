import 'package:flutter/material.dart';

class StatusItemList{
  final String mTitle;

  StatusItemList({
    @required this.mTitle,
  });
}

final statusItemList = [
  StatusItemList(mTitle: '待付款'),
  StatusItemList(mTitle: '待出貨'),
  StatusItemList(mTitle: '待收貨'),
  StatusItemList(mTitle: '訂單已完成'),
  StatusItemList(mTitle: '已取消'),
  StatusItemList(mTitle: '退貨/退款'),
];