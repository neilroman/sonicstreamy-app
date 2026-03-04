import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class RadioService {
  final String apiUrl;

  RadioService(this.apiUrl);

  Future<List<dynamic>> fetchRadioStations() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load radio stations');
    }
  }

  Future<void> saveStation(String station) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('favourite_station', station);
  }

  Future<String?> getSavedStation() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('favourite_station');
  }
}