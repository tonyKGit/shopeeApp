class UserPosts {
  final String userAccount;
  final String image;
  final String loveNumber;
  final String commentNumber;
  final String viewNumber;

  UserPosts(this.userAccount,this.image,this.loveNumber,this.commentNumber,this.viewNumber);


  UserPosts.fromJson(Map<String, dynamic> json)
      : userAccount = json['userAccount'],
        image = json['image'],
        loveNumber = json['loveNumber'],
        commentNumber = json['commentNumber'],
        viewNumber = json['viewNumber'];

  // Map<String, dynamic> toJson() =>
  //     {
  //       'userAccount' : userAccount,
  //       'image': image,
  //       'loveNumber': loveNumber,
  //       'commentNumber' : commentNumber,
  //       'viewNumber' : viewNumber
  //     };
}
