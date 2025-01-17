import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/pages/detail_user.dart';
import 'package:prueba_tecnica/pages/home_page.dart';
import 'package:prueba_tecnica/providers/users_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (_) => UserProvider())
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JSONPlaceholder Users',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserListScreen(),
    ),
    );
       
  }
}



