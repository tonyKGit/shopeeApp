import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyListItem extends StatefulWidget{
  @override
  _BuyListItemState createState() => _BuyListItemState();
}

class _BuyListItemState extends State<BuyListItem>{
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     Row(
    //       children: [
    //         Flexible(
    //           child: FlatButton(
    //             onPressed: null,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Row(
    //                     children: [
    //                       Image.asset('assets/images/user-avatar-info_64.png',width: 30,height: 30,),
    //                       SizedBox(width: 10),
    //                       Text("shopName")
    //                     ],
    //                   ),
    //                   Text("已完成")
    //                 ],
    //               )
    //           ),
    //         ),
    //       ],
    //     ),
    //     Row(
    //       children: [
    //         Flexible(
    //             child: FlatButton(
    //               minWidth: double.infinity,
    //               shape: Border(
    //                   bottom: BorderSide(
    //                       color: Colors.black.withOpacity(0.2),width: 0.5
    //                   )
    //               ),
    //               child: Row(
    //                 children: [
    //                   Expanded(
    //                     flex: 1,
    //                       child: Image.asset('assets/images/user-avatar-info_64.png',width: 100,height: 100),
    //                   ),
    //                   SizedBox(width: 10,),
    //                   Expanded(
    //                     flex: 9,
    //                       child: Column(
    //                         children: [
    //                           Align(
    //                             alignment: Alignment.centerLeft,
    //                             child: Text("商品名稱"),
    //                           ),
    //                           Align(
    //                             alignment: Alignment.centerLeft,
    //                             child: Text("商品內容"),
    //                           ),
    //                           Row(
    //                             mainAxisAlignment: MainAxisAlignment.end,
    //                             children: [
    //                               Text("價格")
    //                             ],
    //                           )
    //                         ],
    //                       )
    //                   )
    //                 ],
    //               ),
    //             )
    //         )
    //       ],
    //     ),
    //     Row(
    //       children: [
    //         Flexible(
    //             child: FlatButton(
    //               minWidth: double.infinity,
    //               shape: Border(
    //                   bottom: BorderSide(
    //                       color: Colors.black.withOpacity(0.2),width: 0.5
    //                   )
    //               ),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text("x商品"),
    //                   Text("訂單金額")
    //                 ],
    //               ),
    //             )
    //         )
    //       ],
    //     ),
    //     Row(
    //       children: [
    //         Flexible(
    //             child: FlatButton(
    //               minWidth: double.infinity,
    //               shape: Border(
    //                   bottom: BorderSide(
    //                       color: Colors.black.withOpacity(0.2),width: 0.5
    //                   )
    //               ),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text("買家取件成功"),
    //                   Text(">")
    //                 ],
    //               ),
    //             )
    //         )
    //       ],
    //     ),
    //     Row(
    //       children: [
    //         Flexible(
    //             child: FlatButton(
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text("尚未收到你的評價喔"),
    //                   FlatButton(
    //                       onPressed: null,
    //                       child: Text("再買一次")
    //                   )
    //                 ],
    //               ),
    //             )
    //         )
    //       ],
    //     ),
    //   ],
    // );
    return Container(
      color: Colors.white,
      child:
      Column(
        children: [
          Row(
            children: [
              Flexible(
                child: FlatButton(
                    onPressed: null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/user-avatar-info_64.png',width: 30,height: 30,),
                            SizedBox(width: 10),
                            Text("shopName")
                          ],
                        ),
                        Text("已完成")
                      ],
                    )
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                  child: FlatButton(
                    minWidth: double.infinity,
                    shape: Border(
                        bottom: BorderSide(
                            color: Colors.black.withOpacity(0.2),width: 0.5
                        )
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.asset('assets/images/user-avatar-info_64.png',width: 100,height: 100),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                            flex: 9,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("商品名稱"),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("商品內容"),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("價格")
                                  ],
                                )
                              ],
                            )
                        )
                      ],
                    ),
                  )
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                  child: FlatButton(
                    minWidth: double.infinity,
                    shape: Border(
                        bottom: BorderSide(
                            color: Colors.black.withOpacity(0.2),width: 0.5
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("x商品"),
                        Text("訂單金額")
                      ],
                    ),
                  )
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                  child: FlatButton(
                    minWidth: double.infinity,
                    shape: Border(
                        bottom: BorderSide(
                            color: Colors.black.withOpacity(0.2),width: 0.5
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("買家取件成功"),
                        Text(">")
                      ],
                    ),
                  )
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                  child: FlatButton(
                    onPressed: (){
                      print("receive");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("尚未收到你的評價喔"),
                        FlatButton(
                          minWidth: 120,
                            onPressed: (){
                              print("press again");
                            },
                            color: Colors.orangeAccent,
                            child: Text("再買一次")
                        )
                      ],
                    ),
                  )
              )
            ],
          ),
        ],
      ),
    );
  }
}