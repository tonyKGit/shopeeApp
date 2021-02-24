import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class NewPostScreen extends StatefulWidget{
  @override
  _NewPostScreenState createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  File _image;

  @override
  Widget build(BuildContext context) {
    dynamic obj = ModalRoute.of(context).settings.arguments;
    _image = obj;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.orangeAccent, //change your color here
        ),
        title: Text("新貼文",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          FlatButton(
              textColor: Colors.orangeAccent,
              disabledColor: Colors.orange[100],
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/userScreen', ModalRoute.withName('/homeScreen'));
                //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => UserScreen()));
              },
              child: Text('發佈')
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Center(
            child: Image.file(_image,height: 150,width: 150),
          ),
          Row(
            children: [
              SizedBox(width: 15,),
              Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '至多可有 30 個標籤在標題中間',
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.3))
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