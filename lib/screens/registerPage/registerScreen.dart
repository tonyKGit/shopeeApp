import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'dart:math';

import 'package:shopee/service/authService.dart';

class RegisterScreen extends StatefulWidget{
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>{
  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('註冊'),
        actions: [
          FlatButton(
              onPressed: null,
              child: Text('幫助'))
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Image.asset('assets/images/phone-icon_64.png',height: 30,width: 30,),
              SizedBox(width: 20),
              Expanded(
                  child:
                  TextField(
                    controller: numberController,
                    autocorrect: true,
                    //keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Enter Your Number Here'
                    ),
                  )
              ),
              SizedBox(width: 20)
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Expanded(
                  child: Container(
                    color: Colors.orange,
                    child: FlatButton (
                      onPressed: () async{
                        if(numberController.text != null && numberController.text != ''){
                          AuthService auth = AuthService();
                          var result = await auth.createUserWithPhone(numberController.text.trim(),context);
                          print(result);
                        }
                      },
                      child: Text('下一步'),
                    ),
                  )
              ),
              SizedBox(width: 20)
            ],
          ),
        ],
      ),
    );
  }
}