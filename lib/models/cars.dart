
class Cars {
 late int id;
 late String name;
 late String carNumber;
 late String isOld;
 late String price;
 late String description;
 late String address;
 late String brandId;
 late String modelYear;
 late String image;
 late String contact;
 late String status;
 late String addedBy;
 late String createdAt;
 late String updatedAt;
 late String color;
 late String? mileage;
  String? engine;
  String? fuelConsumption;
 late String fuelType;
 late String? fuelEconomy;
 late String? interColor;
 late String transmission;
 late String? power;
 late String drive;
 late String? exteriorId;
 late String? interiorImage;
 late bool wishlist;
 late bool inCart;
 late String imageUrl;
 late bool userCart;


  Cars.fromJson(Map<String, dynamic> json) {
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
    mileage = json['mileage'];
    engine = json['engine'];
    fuelConsumption = json['fuel_consumption'];
    fuelType = json['fuel_type'];
    fuelEconomy = json['fuel_economy'];
    interColor = json['inter_color'];
    transmission = json['transmission'];
    power = json['power'];
    drive = json['drive'];
    exteriorId = json['exterior_id'];
    interiorImage = json['interior_image'];
    wishlist = json['wishlist'];
    inCart = json['in_cart'];
    imageUrl = json['image_url'];
    userCart = json['user_cart'];
  }

}