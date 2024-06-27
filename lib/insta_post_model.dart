class InstaPostModel {
  String? image;
  int? likes;
  String? content;

  InstaPostModel({
    this.image,
    this.likes,
    this.content,
  });

  factory InstaPostModel.fromJson(Map<String, dynamic> json) => InstaPostModel(
        image: json["image"],
        likes: json["likes"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "likes": likes,
        "content": content,
      };
}
