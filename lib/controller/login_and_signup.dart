import 'dart:convert';
import 'package:elegant_threads/models/users.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

const String sigUpApi = "http://localhost:4001/api/users/signup";

class Credential extends GetxController {
  bool selectedPassword = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Widget togglePasswod() {
    return IconButton(
        onPressed: () {
          selectedPassword = !selectedPassword;
        },
        icon: selectedPassword
            ? Icon(Icons.visibility)
            : Icon(Icons.visibility_off));
  }

  Future<http.Response> signUp(User user) async {
    final response = await http.post(
      Uri.parse(sigUpApi),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user.toJson()),
    );
    if (response.statusCode == 201) {
      final Map<String, dynamic> data = jsonDecode(response.body);

      return response;
    } else {
      throw Exception('');
    }
  }

  Future<void> createUser() async {
    User user = User(
      email: email.text,
      password: password.text,
    );
    try {
      final response = await signUp(user);
       print("Status code :${response.statusCode}");
      print('User created: ${response.body}');
    } catch (e) {
      final response = await signUp(user);
        print("Status code :${response.statusCode}");
      print('Failed to create user: $e');
  
    }
    
    print('User creation process completed');
  }
}
