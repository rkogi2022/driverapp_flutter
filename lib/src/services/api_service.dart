import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/driver.dart';
import '../utils/constants.dart';

class ApiService {
  static Future<Driver?> login(String Drivername, String password) async {
    final response = await http.post(
      Uri.parse('$apiBaseUrl/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'Drivername': Drivername,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return Driver.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  static Future<Driver?> register(String firstname, String secondname, String email, String password) async {
    final response = await http.post(
      Uri.parse('$apiBaseUrl/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'firstname': firstname,
        'secondname': secondname,
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return Driver.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }
}
