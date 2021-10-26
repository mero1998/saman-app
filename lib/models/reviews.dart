

class Reviews {
 late int id;
 late String name;
 late String reviews;
 late String image;


  Reviews.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    reviews = json['reviews'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['reviews'] = this.reviews;
    data['image'] = this.image;
    return data;
  }
}