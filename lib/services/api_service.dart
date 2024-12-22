import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final String _baseUrl = 'https://api.intra.42.fr/v2';
  String? _accessToken;

  Future<void> fetchAccessToken() async {
    final response = await http.post(
      Uri.parse('https://api.intra.42.fr/oauth/token'),
      body: {
        'grant_type': 'client_credentials',
        'client_id': dotenv.env['CLIENT_ID'],
        'client_secret': dotenv.env['CLIENT_SECRET'],
      },
    );

    if (response.statusCode == 200) {
      _accessToken = json.decode(response.body)['access_token'];
      print('Access Token: $_accessToken');
    } else {
      throw Exception('Failed to fetch access token');
    }
  }

  Future<Map<String, dynamic>> fetchUserDetails(String login) async {
    if (_accessToken == null) {
      throw Exception('Access token is null. Call fetchAccessToken() first.');
    }

    final response = await http.get(
      Uri.parse('$_baseUrl/users/$login'),
      headers: {'Authorization': 'Bearer $_accessToken'},
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else if (response.statusCode == 404) {
      throw Exception('User not found');
    } else {
      throw Exception('Failed to fetch user details');
    }
  }

  String? get accessToken => _accessToken;
}
