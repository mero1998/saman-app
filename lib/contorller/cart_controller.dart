import 'package:saman_project/models/cart.dart';
import 'package:saman_project/preference/user_prefernce.dart';
import 'package:saman_project/storage/db_provider.dart';
import 'package:sqflite/sqflite.dart';


class CartController{
  Database _database = DbProvider().database;

  Future<int> create(Cart object) async {

    print(object.toMap());
    // TODO: implement create
    return _database.insert('cart', object.toMap());
  }

  @override
  Future<List<Cart>> read() async {
    // TODO: implement read
    List<Map<String, dynamic>> rowsMaps = await _database.query('cart_products' , where: "user_id = ?",
      whereArgs: [UserPreferences().id]);
    print("ROW MAP:  $rowsMaps");
      return rowsMaps.map((rowMap) => Cart.fromMap(rowMap)).toList();

  }


  Future<bool> delete(int id) async {
    int countOfDeletedRows =  await _database.delete('cart_products', where: 'product_id = ?', whereArgs: [id]);
    return countOfDeletedRows > 0;
  }

  Future<bool> deleteAll() async {

    int countOfDeletedRows =  await _database.delete('cart_products', where: 'user_id = ?', whereArgs: [UserPreferences().id]);
    return countOfDeletedRows > 0;
  }
}