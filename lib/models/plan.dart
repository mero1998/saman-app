//
//
// class Plan {
//  late int id;
//  late String name;
//  late Period? period;
//  late Period? price;
//  late String image;
//  late List<Points> points;
//
//
//   Plan.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     period =
//     json['period'] != null ? new Period.fromJson(json['period']) : null;
//     price = json['price'] != null ? new Period.fromJson(json['price']) : null;
//     image = json['image'];
//     if (json['points'] != null) {
//       points = <Points>[];
//       json['points'].forEach((v) {
//         points.add(new Points.fromJson(v));
//       });
//     }
//   }
//
// }
//
// class Period {
//  late String number;
//  late String type;
//
//
//   Period.fromJson(Map<String, dynamic> json) {
//     number = json['number'];
//     type = json['type'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['number'] = this.number;
//     data['type'] = this.type;
//     return data;
//   }
// }
//
// class Points {
//  late int id;
//  late String name;
//
//
//   Points.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     return data;
//   }
// }


class Plan {
 late int id;
 late String name;
 late Period? period;
 late Period? price;
 late String image;
 late List<Points> points;


  Plan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    period =
    json['period'] != null ? new Period.fromJson(json['period']) : null;
    price = json['price'] != null ? new Period.fromJson(json['price']) : null;
    image = json['image'];
    if (json['points'] != null) {
      points = <Points>[];
      json['points'].forEach((v) {
        points.add(new Points.fromJson(v));
      });
    }
  }

}

class Period {
 late String number;
 late String type;


  Period.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['type'] = this.type;
    return data;
  }
}

class Points {
 late int id;
 late Name? name;


  Points.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
  }

}

class Name {
 late String ar;
 late String en;


  Name.fromJson(Map<String, dynamic> json) {
    ar = json['ar'];
    en = json['en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ar'] = this.ar;
    data['en'] = this.en;
    return data;
  }
}

