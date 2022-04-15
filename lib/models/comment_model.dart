class CommentModel {
  var id, comment, author_img, author_name;

  CommentModel(this.id, this.comment, this.author_img, this.author_name);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["comment"] = comment;
    map["author_img"] = author_img;
    map["author_name"] = author_name;
    return map;
  }

  CommentModel.fromJson(Map map):
        id = map["id"],
        comment = map["content"]["rendered"],
        author_name = map["author_name"],
        author_img = map["author_avatar_urls"]["96"];
}
