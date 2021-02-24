import 'package:flutter/material.dart';
import 'package:shopee/models/networkModel/userPosts.dart';
import 'package:shopee/screens/userPage/widgets/postWallCard.dart';

class PostWall extends StatefulWidget{
  final Stream<List<UserPosts>>  userPostsStream;
  PostWall(this.userPostsStream);
  @override
  _PostWallState createState() => _PostWallState();
}

class _PostWallState extends State<PostWall>{
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget.userPostsStream,
        builder: (context, snapshot){
          return Column(
            children: [
              SizedBox(height: 10),
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              SizedBox(
                                height: 65,
                                width: 65,
                                child: FlatButton(
                                  onPressed: (){

                                  },
                                  child: Icon(Icons.add),
                                  shape: CircleBorder(side: BorderSide(width: 1, color: Colors.red, style: BorderStyle.solid)),
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("新"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                    ],
                  )
              ),
              SizedBox(height: 5),
              snapshot.hasData ? Column(children: getList(snapshot)) : Text("loading"),
            ],
          );
        },
    );
  }

  List<Widget> getList(snapshot) {
    List<Widget> child = [];
    for ( var i in snapshot.data) {
      child.add(PostWallCardItem(i));
    }
    return child;
  }
}