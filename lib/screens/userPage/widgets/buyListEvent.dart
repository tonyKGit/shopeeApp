import 'package:flutter/material.dart';

class BuyListEvent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          // Row(
          //   children: [
          //     Text('1111最強購物')
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     SizedBox(
          //       child:
          //       FlatButton(
          //           onPressed: null,
          //           child: Column(
          //             children: [
          //               Image.asset('assets/images/home_64.png',width: 30,height: 30),
          //               Text('首頁',style: TextStyle(fontSize: 15),)
          //             ],
          //           )
          //       ),
          //     ),
          //     SizedBox(
          //       child:
          //       FlatButton(
          //           onPressed: null,
          //           child: Column(
          //             children: [
          //               Image.asset('assets/images/home_64.png',width: 30,height: 30),
          //               Text('首頁',style: TextStyle(fontSize: 15),)
          //             ],
          //           )
          //       ),
          //     ),
          //     SizedBox(
          //       child:
          //       FlatButton(
          //           onPressed: null,
          //           child: Column(
          //             children: [
          //               Image.asset('assets/images/home_64.png',width: 30,height: 30),
          //               Text('首頁',style: TextStyle(fontSize: 15),)
          //             ],
          //           )
          //       ),
          //     ),
          //     SizedBox(
          //       child:
          //       FlatButton(
          //           onPressed: null,
          //           child: Column(
          //             children: [
          //               Image.asset('assets/images/home_64.png',width: 30,height: 30),
          //               Text('首頁',style: TextStyle(fontSize: 15),)
          //             ],
          //           )
          //       ),
          //     ),
          //   ],
          // ),
          Row(
            children: [
              Text('購買清單')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child:
                FlatButton(
                    onPressed: (){
                      //pass page to buyListScreen
                      Navigator.pushNamed(context, '/buyListScreen',arguments: 2);
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/home_64.png',width: 30,height: 30),
                        Text('首頁',style: TextStyle(fontSize: 15),)
                      ],
                    )
                ),
              ),
              SizedBox(
                child:
                FlatButton(
                    onPressed: null,
                    child: Column(
                      children: [
                        Image.asset('assets/images/home_64.png',width: 30,height: 30),
                        Text('待出貨',style: TextStyle(fontSize: 15),)
                      ],
                    )
                ),
              ),
              SizedBox(
                child:
                FlatButton(
                    onPressed: null,
                    child: Column(
                      children: [
                        Image.asset('assets/images/home_64.png',width: 30,height: 30),
                        Text('待收貨',style: TextStyle(fontSize: 15),)
                      ],
                    )
                ),
              ),
              SizedBox(
                child:
                FlatButton(
                    onPressed: null,
                    child: Column(
                      children: [
                        Image.asset('assets/images/home_64.png',width: 30,height: 30),
                        Text('評價',style: TextStyle(fontSize: 15),)
                      ],
                    )
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}