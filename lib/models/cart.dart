class Cart {
 late int id;
 late String userId;
 late String productId;
 late String quantity;
 late String createdAt;
 late String updatedAt;
 late Car? car;


  Cart.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    productId = json['product_id'];
    quantity = json['quantity'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    car = json['car'] != null ? new Car.fromJson(json['car']) : null;
  }

}

class Car {
 late int id;
 late String? name;
 late String? carNumber;
 late String? isOld;
 late String price;
 late String? description;
 late String? address;
 late String? brandId;
 late String? modelYear;
 late String? image;
 late String contact;
 late String? status;
 late String? addedBy;
 late String? createdAt;
 late String? updatedAt;
 late String? color;
 late String? outerColor;
 late String? mileage;
 late String? engine;
 late String? fuelConsumption;
 late String? fuelType;
 late String? fuelEconomy;
 late String? interColor;
 late String? innerColor;
 late String? transmission;
 late String? power;
 late String? drive;
 late String? exteriorId;
 late String? interiorImage;
 late String? doorsNumber;
 late String? wheelsSize;
 late String? imageUrl;
 late bool userCart;

  Car.fromJson(Map<String, dynamic> json) {
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
    imageUrl = json['image_url'];
    userCart = json['user_cart'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['car_number'] = this.carNumber;
    data['is_old'] = this.isOld;
    data['price'] = this.price;
    data['description'] = this.description;
    data['address'] = this.address;
    data['brand_id'] = this.brandId;
    data['model_year'] = this.modelYear;
    data['image'] = this.image;
    data['contact'] = this.contact;
    data['status'] = this.status;
    data['added_by'] = this.addedBy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['color'] = this.color;
    data['outer_color'] = this.outerColor;
    data['mileage'] = this.mileage;
    data['engine'] = this.engine;
    data['fuel_consumption'] = this.fuelConsumption;
    data['fuel_type'] = this.fuelType;
    data['fuel_economy'] = this.fuelEconomy;
    data['inter_color'] = this.interColor;
    data['inner_color'] = this.innerColor;
    data['transmission'] = this.transmission;
    data['power'] = this.power;
    data['drive'] = this.drive;
    data['exterior_id'] = this.exteriorId;
    data['interior_image'] = this.interiorImage;
    data['doors_number'] = this.doorsNumber;
    data['wheels_size'] = this.wheelsSize;
    data['image_url'] = this.imageUrl;
    data['user_cart'] = this.userCart;
    return data;
  }
}