import 'package:saman_project/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _instance = UserPreferences._();
  late SharedPreferences _sharedPreferences;

  factory UserPreferences() {
    return _instance;
  }

  UserPreferences._();

  SharedPreferences get sharedPreferences => _sharedPreferences;
  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future save(User user) async {
    await _sharedPreferences.setBool('logged_in', true);
    await _sharedPreferences.setInt('id', user.user!.id);
    await _sharedPreferences.setString('name', user.user!.first_name);
    await _sharedPreferences.setString('mobile', user.user!.mobile);
    await _sharedPreferences.setString('email', user.user!.email);
    await _sharedPreferences.setString('country_code', user.user!.contryCode);
    await _sharedPreferences.setString('apiKey', user.token!.substring(39));
    await _sharedPreferences.setString('token', user.token!);

  }

  // Future<bool> setUserName(String name) async{
  //   return await _sharedPreferences.setString('name', name);
  // }
  // Future<bool> setGender(String gender) async{
  //   return await _sharedPreferences.setString('gender', gender);
  //
  // }
  // Future<bool> setCityId(int cityId) async{
  //   return  await _sharedPreferences.setInt('city_id', cityId);
  //
  // }
  int get id => _sharedPreferences.getInt('id') ?? 0;


  bool get isLoggedIn => _sharedPreferences.getBool('logged_in') ?? false;

  Future<bool> logout() async {
    return await _sharedPreferences.clear();
  }
  String getToken(){
    String token = _sharedPreferences.getString("token") ?? "";
    return  "Bearer $token";
  }

  String getApiKey(){
    String apiKey = _sharedPreferences.getString("apiKey") ?? "";
    return apiKey;
  }
  // Future<bool> setLanguage(String codeLang) async{
  //   return await _sharedPreferences.setString("CodeLang", codeLang);
  // }

  String get codeLang => _sharedPreferences.getString("CodeLang") ?? "en";
}
