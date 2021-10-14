
class Cart{
  late int id;
  late String cartName;
  late String price;
  late int user_id;


  Cart();

  Cart.fromMap(Map<String, dynamic> rowMap){
    id = rowMap['id'];
    cartName = rowMap['cartName'];
    price = rowMap['price'];

  }


  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = Map<String, dynamic>();
    map['cartName'] = cartName;
    map['price'] = price;
    return map;
  }
  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = Map<String, dynamic>();
    map['cartName'] = cartName;
    map['price'] = price;

    return map;
  }
}