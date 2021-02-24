import 'package:flutter/material.dart';
import 'package:shopee/models/networkModel/userPosts.dart';

class PostWallCardItem extends StatefulWidget{
  final UserPosts  userPosts;
  PostWallCardItem(this.userPosts);
  @override
  _PostWallCardItemState createState() => _PostWallCardItemState();
}

class _PostWallCardItemState extends State<PostWallCardItem>{
  @override
  Widget build(BuildContext context) {
    // return StreamBuilder<UserPosts>(
    //     stream: widget.userPostsStream,
    //     builder: (context, snapshot){
    //       return Container(
    //         color: Colors.white,
    //         child: Column(
    //           children: [
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Row(
    //                   children: [
    //                     SizedBox(width: 10),
    //                     IconButton(icon: Image.asset('assets/images/user-avatar-info_64.png'), onPressed: (){}),
    //                     SizedBox(width: 5),
    //                     Text("User account")
    //                   ],
    //                 ),
    //                 Row(
    //                   children: [
    //                     FlatButton(onPressed: (){}, child: Text("．．．"))
    //                   ],
    //                 )
    //               ],
    //             ),
    //             Container(
    //               color: Colors.orangeAccent,
    //               height: 300,
    //               width: double.infinity,
    //               child: Image.asset('assets/images/user-avatar-info_64.png'),
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Row(
    //                   children: [
    //                     IconButton(
    //                         icon: Icon(Icons.add),
    //                         onPressed: (){
    //
    //                         }),
    //                     Text("0"),
    //                     IconButton(
    //                         icon: Icon(Icons.chat_bubble),
    //                         onPressed: (){
    //
    //                         }),
    //                     Text("0"),
    //                     IconButton(
    //                         icon: Icon(Icons.remove_red_eye),
    //                         onPressed: (){
    //
    //                         }),
    //                     Text("0"),
    //                   ],
    //                 ),
    //                 IconButton(
    //                   icon: Icon(Icons.share),
    //                   onPressed: (){},
    //                 )
    //               ],
    //             ),
    //             Row(
    //               children: [
    //                 SizedBox(width: 15),
    //                 Flexible(
    //                     child: TextField(
    //                       decoration: InputDecoration(
    //                           icon: Image.asset('assets/images/user-avatar-info_64.png',height: 24,width: 24,),
    //                           border: InputBorder.none,
    //                           hintText: '新增一則留言'
    //                       ),
    //                     ))
    //               ],
    //             )
    //           ],
    //         ),
    //       );
    //     }
    // );
    UserPosts mUserPost = widget.userPosts;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  IconButton(icon: Image.asset('assets/images/user-avatar-info_64.png'), onPressed: (){}),
                  //IconButton(icon: Image.network('https://drive.google.com/file/d/1N8iCz4EvaHNZldQauvVfAM1wkZAiwTf1/view?usp=sharing'), onPressed: (){}),
                  SizedBox(width: 5),
                  Text(mUserPost.userAccount)
                  // Text("User account")
                ],
              ),
              Row(
                children: [
                  FlatButton(onPressed: (){}, child: Text("．．．"))
                ],
              )
            ],
          ),
          Container(
            color: Colors.orangeAccent,
            height: 300,
            width: double.infinity,
            //child: Image.asset('assets/images/user-avatar-info_64.png'),
            child: Image.network(mUserPost.image),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: (){

                      }),
                  Text(mUserPost.loveNumber),
                  IconButton(
                      icon: Icon(Icons.chat_bubble),
                      onPressed: (){

                      }),
                  Text(mUserPost.commentNumber),
                  IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: (){

                      }),
                  Text(mUserPost.viewNumber),
                ],
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: (){},
              )
            ],
          ),
          Row(
            children: [
              SizedBox(width: 15),
              Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Image.asset('assets/images/user-avatar-info_64.png',height: 24,width: 24,),
                        border: InputBorder.none,
                        hintText: '新增一則留言'
                    ),
                  ))
            ],
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }

}