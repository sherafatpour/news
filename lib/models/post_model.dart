class PostModel {
  var id, title, date, content, cat, author_img, name, img;

  PostModel(this.id, this.title, this.content, this.cat, this.author_img,
      this.name, this.img);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};

    map['id'] = id;
    map['title'] = title;
    map['date'] = date;
    map['content'] = content;
    map['cat'] = cat;
    map['author_img'] = author_img;
    map['name'] = name;
    map['img'] = img;

    return map;
  }

  PostModel.fromJson(Map json)
      : id = json['id'],
        title = json['title']['rendered'],
        date = json['date'],
        content = json['content']['rendered'],
        cat = json['_embedded']['wp:term'][0][0]['name'],
        author_img = json['_embedded']['author'][0]['avatar_urls']['96'],
        name = json['_embedded']['author'][0]['name'],
        img = json['_embedded']['wp:featuredmedia'][0]['source_url'];
}
