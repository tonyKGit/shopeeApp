import 'package:flutter/material.dart';

class TopBar extends StatefulWidget{
  final bool isLogin;
  TopBar(this.isLogin);
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar>{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 200,color: Colors.orange),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: widget.isLogin,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('title')
                      ],
                    ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Visibility(
                      visible: widget.isLogin,
                      child: IconButton(icon: Image.asset('assets/images/setting_64.png',height: 30,width: 30), onPressed: null),
                    ),
                    IconButton(icon: Image.asset('assets/images/shopping-cart_64.png',height: 30,width: 30), onPressed: null),
                    IconButton(icon: Image.asset('assets/images/chat-box_64.png',height: 30,width: 30), onPressed: null)
                  ],
                )
              ],
            ),
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(icon: Image.asset('assets/images/user-avatar-info_64.png',height: 30,width: 30),
                        onPressed: null),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlatButton(onPressed: null,
                        child: Text('登入')
                    ),
                    FlatButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/registerScreen');
                        },
                        child: Text('註冊')
                    ),
                  ],
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}