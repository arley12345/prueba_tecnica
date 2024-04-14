import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prueba_tecnica/globals/enviroment.dart';
import 'package:prueba_tecnica/models/user.dart';
import 'package:prueba_tecnica/pages/detail_user.dart';

class UserServices {
    List<User> _users = [];
   Future<List<User>> fetchUsers() async {
  final response = await http.get(Uri.parse('${Enviroment.rutApiUsers}'));
  if (response.statusCode == 200) {
    final List<dynamic> userList = jsonDecode(response.body);
    final List<User> users = userList.map((json) => User.fromJson(json)).toList();
    return users;
  } else {
    throw Exception('Failed to load users');
  }
}
}