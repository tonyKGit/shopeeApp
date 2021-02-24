
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopee/blocs/user_posts_bloc.dart';
import 'package:shopee/models/bottom_bar.dart';
import 'package:shopee/screens/userPage/inPurchase.dart';
import 'package:shopee/screens/userPage/tabBarView.dart';
import 'topBar.dart';
import 'postWall.dart';
import 'inPurchase.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class UserScreen extends StatefulWidget{
  // UserPostsBloc userPostsBloc;
  // UserScreen(this.userPostsBloc);
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen>{
  bool pressed = true;
  UserPostsBloc userPostsBloc;
  // File _image;
  //
  // _imgFromCamera() async {
  //   File image = (await ImagePicker.pickImage(
  //       source: ImageSource.camera, imageQuality: 50
  //   )) as File;
  //
  //   setState(() {
  //     _image = image;
  //   });
  // }

  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.pushNamed(context, "/editPhotoScreen",arguments: _image);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    userPostsBloc = Provider.of<UserPostsBloc>(context);
    final floatingButtons = List<UnicornButton>();
    floatingButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: "新增現實動態",
        labelColor: Colors.white,
        labelHasShadow: false,
        labelBackgroundColor: Colors.transparent,
        currentButton: FloatingActionButton(
          heroTag: "新增現實動態",
          backgroundColor: Colors.white,
          mini: true,
          child: Icon(Icons.camera_alt,color: Colors.orangeAccent,),
          onPressed: () {
            print('Attachment FAB clicked');
          },
        ),
      ),
    );

    floatingButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: "新增貼文",
        labelColor: Colors.white,
        labelHasShadow: false,
        labelBackgroundColor: Colors.transparent,
        currentButton: FloatingActionButton(
          heroTag: "新增貼文",
          backgroundColor: Colors.white,
          mini: true,
          child: Icon(Icons.attach_file,color: Colors.orangeAccent,),
          onPressed: () {
            getImage();
            print('Attachment FAB clicked');
          },
        ),
      ),
    );
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.90),
        body:Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  TopBar(true),
                  Visibility(
                    visible: true,
                    maintainSize: false,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                              color: Colors.white,
                              textColor: pressed ? Colors.redAccent : Colors.black,
                              onPressed: (){
                                pressed = true;
                                setState(() {

                                });
                              },
                              child: Text('購買中')
                          ),
                          FlatButton(
                              textColor: pressed ? Colors.black : Colors.redAccent,
                              onPressed: () {
                                pressed = false;
                                setState(() {
                                  userPostsBloc.readFile();
                                });
                              },
                              child: Text('貼文牆')
                          ),
                        ],
                      ),
                    ),
                  ),
                  pressed ? InPurchase() : PostWall(userPostsBloc.userPostsStream),
                  // Expanded(child: tabBarView())
                ],
              ),
            ),
            BottomBar("UserScreen")
          ],
        ),
        floatingActionButton: Visibility(
          visible: !pressed,
          child: UnicornDialer(
              backgroundColor: Colors.black38,
              parentButtonBackground: Colors.orangeAccent,
              orientation: UnicornOrientation.VERTICAL,
              parentButton: Icon(Icons.add),
              childButtons: floatingButtons
          ),
        ),
        floatingActionButtonLocation: CustomFloatingActionButtonLocation(FloatingActionButtonLocation.endFloat, 0, -52),
    );
  }
}

class CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
  FloatingActionButtonLocation location;
  double offsetX; // Offset in X direction
  double offsetY; // Offset in Y direction
  CustomFloatingActionButtonLocation(this.location, this.offsetX, this.offsetY);

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    Offset offset = location.getOffset(scaffoldGeometry);
    return Offset(offset.dx + offsetX, offset.dy + offsetY);
  }
}