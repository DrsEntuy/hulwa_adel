import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  final String _username = 'username';
  final String _password = 'password';
  final String _idkaryawan = 'idkaryawan';
  final String _islogin = 'islogin';
  final String _tokenkey = 'tokenkey';

  Future<String> getUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_username) ?? '';
  }

  Future<bool> setUsername(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(_username, value);
  }

  Future<String> getPassword() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_password) ?? '';
  }

  Future<bool> setIdKaryawan(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(_idkaryawan, value);
  }

  Future<String> getIdKaryawan() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_idkaryawan) ?? '';
  }

  Future<bool> setPassword(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(_password, value);
  }

  Future<String> getIsLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_islogin) ?? 'false';
  }

  Future<bool> setIsLogin(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(_islogin, value);
  }

  Future<String> getTokenKey() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenkey) ?? '';
  }

  Future<bool> setTokenKey(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(_tokenkey, value);
  }
}
