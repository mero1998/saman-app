// class CarDetails {
//  late int id;
//  late String name;
//  late String carNumber;
//  late String isOld;
//  late String price;
//  late String description;
//  late String address;
//  late String brandId;
//  late String modelYear;
//  late String image;
//  late String contact;
//  late String status;
//  late String addedBy;
//  late String createdAt;
//  late String updatedAt;
//  late String color;
//  late String? mileage;
//  late String engine;
//  late Null fuelConsumption;
//  late String fuelType;
//  late Null fuelEconomy;
//  late String? interColor;
//  late String transmission;
//  late Null power;
//  late String drive;
//  late String exteriorId;
//  late String? interiorImage;
//  late bool wishlist;
//  late bool inCart;
//  late String imageUrl;
//  late bool userCart;
//  late List<Images> images;
//  late Category? category;
//  late List? feature;
//
//   CarDetails.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     carNumber = json['car_number'];
//     isOld = json['is_old'];
//     price = json['price'];
//     description = json['description'];
//     address = json['address'];
//     brandId = json['brand_id'];
//     modelYear = json['model_year'];
//     image = json['image'];
//     contact = json['contact'];
//     status = json['status'];
//     addedBy = json['added_by'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     color = json['color'];
//     mileage = json['mileage'];
//     engine = json['engine'];
//     fuelConsumption = json['fuel_consumption'];
//     fuelType = json['fuel_type'];
//     fuelEconomy = json['fuel_economy'];
//     interColor = json['inter_color'];
//     transmission = json['transmission'];
//     power = json['power'];
//     drive = json['drive'];
//     exteriorId = json['exterior_id'];
//     interiorImage = json['interior_image'];
//     wishlist = json['wishlist'];
//     inCart = json['in_cart'];
//     imageUrl = json['image_url'];
//     userCart = json['user_cart'];
//     if (json['images'] != null) {
//       images = <Images>[];
//       json['images'].forEach((v) {
//         images.add(new Images.fromJson(v));
//       });
//     }
//     category = json['category'] != null
//         ? new Category.fromJson(json['category'])
//         : null;
//     // if (json['feature'] != null) {
//     //   feature = <Null>[];
//     //   json['feature'].forEach((v) {
//     //     feature.add(new Null.fromJson(v));
//     //   });
//     // }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['car_number'] = this.carNumber;
//     data['is_old'] = this.isOld;
//     data['price'] = this.price;
//     data['description'] = this.description;
//     data['address'] = this.address;
//     data['brand_id'] = this.brandId;
//     data['model_year'] = this.modelYear;
//     data['image'] = this.image;
//     data['contact'] = this.contact;
//     data['status'] = this.status;
//     data['added_by'] = this.addedBy;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['color'] = this.color;
//     data['mileage'] = this.mileage;
//     data['engine'] = this.engine;
//     data['fuel_consumption'] = this.fuelConsumption;
//     data['fuel_type'] = this.fuelType;
//     data['fuel_economy'] = this.fuelEconomy;
//     data['inter_color'] = this.interColor;
//     data['transmission'] = this.transmission;
//     data['power'] = this.power;
//     data['drive'] = this.drive;
//     data['exterior_id'] = this.exteriorId;
//     data['interior_image'] = this.interiorImage;
//     data['wishlist'] = this.wishlist;
//     data['in_cart'] = this.inCart;
//     data['image_url'] = this.imageUrl;
//     data['user_cart'] = this.userCart;
//     if (this.images != null) {
//       data['images'] = this.images.map((v) => v.toJson()).toList();
//     }
//     if (this.category != null) {
//       data['category'] = this.category!.toJson();
//     }
//     // if (this.feature != null) {
//     //   data['feature'] = this.feature.map((v) => v.toJson()).toList();
//     // }
//     return data;
//   }
// }
//
// class Images {
//  late int id;
//  late String carId;
//  late String url;
//  late String createdAt;
//  late String updatedAt;
//  late String picUrl;
//
//
//
//   Images.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     carId = json['car_id'];
//     url = json['url'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     picUrl = json['pic_url'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['car_id'] = this.carId;
//     data['url'] = this.url;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['pic_url'] = this.picUrl;
//     return data;
//   }
// }
//
// class Category {
//  late int id;
//  late String name;
//  late String status;
//  late String createdAt;
//  late String updatedAt;
//  late String image;
//
//
//
//   Category.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     status = json['status'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     image = json['image'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['status'] = this.status;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['image'] = this.image;
//     return data;
//   }
// }

// class CarDetails {
//  late int id;
//  late String name;
//  late String carNumber;
//  late String isOld;
//  late String price;
//  late String description;
//  late String address;
//  late String brandId;
//  late String modelYear;
//  late String image;
//  late String contact;
//  late String status;
//  late String addedBy;
//  late String createdAt;
//  late String updatedAt;
//  late String color;
//  late Null outerColor;
//  late String mileage;
//  late String engine;
//  late Null fuelConsumption;
//  late String fuelType;
//  late Null fuelEconomy;
//  late String interColor;
//  late Null innerColor;
//  late String transmission;
//  late Null power;
//  late String drive;
//  late String exteriorId;
//  late Null interiorImage;
//  late Null doorsNumber;
//  late Null wheelsSize;
//  late bool wishlist;
//  late bool inCart;
//  late String imageUrl;
//  late bool userCart;
//  late List<Null> images;
//  late Category? category;
//  late List<Null> feature;
//
//  CarDetails.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     carNumber = json['car_number'];
//     isOld = json['is_old'];
//     price = json['price'];
//     description = json['description'];
//     address = json['address'];
//     brandId = json['brand_id'];
//     modelYear = json['model_year'];
//     image = json['image'];
//     contact = json['contact'];
//     status = json['status'];
//     addedBy = json['added_by'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     color = json['color'];
//     outerColor = json['outer_color'];
//     mileage = json['mileage'];
//     engine = json['engine'];
//     fuelConsumption = json['fuel_consumption'];
//     fuelType = json['fuel_type'];
//     fuelEconomy = json['fuel_economy'];
//     interColor = json['inter_color'];
//     innerColor = json['inner_color'];
//     transmission = json['transmission'];
//     power = json['power'];
//     drive = json['drive'];
//     exteriorId = json['exterior_id'];
//     interiorImage = json['interior_image'];
//     doorsNumber = json['doors_number'];
//     wheelsSize = json['wheels_size'];
//     wishlist = json['wishlist'];
//     inCart = json['in_cart'];
//     imageUrl = json['image_url'];
//     userCart = json['user_cart'];
//     // if (json['images'] != null) {
//     //   images = <String>[];
//     //   json['images'].forEach((v) {
//     //     images.add(Null.fromJson(v));
//     //   });
//     // }
//     category = json['category'] != null
//         ? new Category.fromJson(json['category'])
//         : null;
//     // if (json['feature'] != null) {
//     //   feature = new List<Null>();
//     //   json['feature'].forEach((v) {
//     //     feature.add(new Null.fromJson(v));
//     //   });
//     // }
//   }
//
// }
//
// class Category {
//  late int id;
//  late String name;
//  late String status;
//  late String createdAt;
//  late String updatedAt;
//  late String image;
//
//   Category.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     status = json['status'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     image = json['image'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['status'] = this.status;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['image'] = this.image;
//     return data;
//   }
// }


class CarDetails {
late  int id;
late  String name;
late  String carNumber;
late  String isOld;
late  String price;
late  String description;
late  String address;
late  String brandId;
late  String modelYear;
late  String image;
late  String contact;
late  String status;
late  String addedBy;
late  String createdAt;
late  String updatedAt;
late  String color;
late  String outerColor;
late  String mileage;
late  String engine;
late  String fuelConsumption;
late  String fuelType;
late  String fuelEconomy;
late  String interColor;
late  String innerColor;
late  String transmission;
late  String power;
late  String drive;
late  Null exteriorId;
late  String interiorImage;
late  String doorsNumber;
late  String wheelsSize;
late  bool wishlist;
late  bool inCart;
late  String imageUrl;
late  bool userCart;
late  List<Images> images;
late  Category? category;
late  List<Null> feature;

CarDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    carNumber = json['car_number'];
    isOld = json['is_old'];
    price = json['price'];
    description = json['description'];
    address = json['address'];
    brandId = json['brand_id'];
    modelYear = json['model_year'];
    image = json['image'];
    contact = json['contact'];
    status = json['status'];
    addedBy = json['added_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    color = json['color'];
    outerColor = json['outer_color'];
    mileage = json['mileage'];
    engine = json['engine'];
    fuelConsumption = json['fuel_consumption'];
    fuelType = json['fuel_type'];
    fuelEconomy = json['fuel_economy'];
    interColor = json['inter_color'];
    innerColor = json['inner_color'];
    transmission = json['transmission'];
    power = json['power'];
    drive = json['drive'];
    exteriorId = json['exterior_id'];
    interiorImage = json['interior_image'];
    doorsNumber = json['doors_number'];
    wheelsSize = json['wheels_size'];
    wishlist = json['wishlist'];
    inCart = json['in_cart'];
    imageUrl = json['image_url'];
    userCart = json['user_cart'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images.add(new Images.fromJson(v));
      });
    }
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    // if (json['feature'] != null) {
    //   feature = new List<Null>();
    //   json['feature'].forEach((v) {
    //     feature.add(new Null.fromJson(v));
    //   });
    }
}

class Images {
 late int id;
 late String carId;
 late String url;
 late String createdAt;
 late String updatedAt;
 late String picUrl;



  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    carId = json['car_id'];
    url = json['url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    picUrl = json['pic_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['car_id'] = this.carId;
    data['url'] = this.url;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['pic_url'] = this.picUrl;
    return data;
  }
}

class Category {
 late int id;
 late String name;
 late String status;
 late String createdAt;
 late String updatedAt;
 late String image;


  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
  }

}