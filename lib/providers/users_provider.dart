import 'package:flutter/material.dart';
import 'package:prueba_tecnica/services/user_services.dart';
import '../models/user.dart';
import '../pages/detail_user.dart';

class UserProvider extends ChangeNotifier{
  List<User>? users;

  Future<List<User>?> getUsers() async {
    if (users != null) {
      return users;
    }

    var service = new UserServices();
    this.users = await service.fetchUsers();
    notifyListeners();
    return users;
  }
}