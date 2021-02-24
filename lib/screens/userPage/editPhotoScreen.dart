
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class EditPhotoScreen extends StatefulWidget{
  @override
  _EditPhotoScreenState createState() => _EditPhotoScreenState();
}

class _EditPhotoScreenState extends State<EditPhotoScreen>{
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
        title: Text("編輯照片",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          FlatButton(
              textColor: Colors.orangeAccent,
              disabledColor: Colors.orange[100],
              onPressed: (){
                Navigator.pushNamed(context, '/newPostScreen', arguments: _image);
              },
              child: Text('下一步')
          )
        ],
      ),
      body: Column(
        children: [
          Flexible(
              child: _image == null
                  ? Text("No image selected")
                  : Image.file(_image)
          )
        ],
      ),
    );
  }

}