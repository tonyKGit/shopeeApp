class UserPostsResponse {
  final List items;

  UserPostsResponse(this.items);

  UserPostsResponse.fromJson(Map<String, dynamic> json) 
    : items = json['items'];

  Map<String, dynamic> toJson() =>
  {
    'items' : items
  };
}
