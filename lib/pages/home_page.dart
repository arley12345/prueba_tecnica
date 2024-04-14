import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/pages/detail_user.dart';
import 'package:prueba_tecnica/pages/home_page.dart';
import 'package:prueba_tecnica/providers/users_provider.dart';

import '../models/user.dart';

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<dynamic> _users = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(      
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: FutureBuilder(
            future: userProvider.getUsers(),
            builder: (_, AsyncSnapshot<List<User>?>? snapshot){
              if (snapshot!.hasData) {
                final userdata = snapshot.data;

                return ListView.builder(
                itemCount: userdata!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserDetailsScreen(user: userdata[index])),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.all(8),
                      elevation: 10,
                      child: Column(
                        children: [
                          Row(children: [
                            Image.asset( width: MediaQuery.of(context).size.width* 0.2,'assets/user_image.jpg'),
                            Column(children: [
                              Row(children: [                     
                            Text('Nombre: ', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
                            Text(userdata[index].name, style: const TextStyle(fontSize: 15),),
                            ],),
                            Row(children: [    
                              Text('Email: ', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),                  
                              Text(userdata[index].email),
                            ],),
                            Row(children: [               
                              Text('Website: ', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),       
                              Text(userdata[index].website),
                            ],),
                            ],)                          
                            ],) 
                        ],   
                      ),
                    ),
                  );              
                },
                );
              }else{
                return Center(
                  child: CircularProgressIndicator(),
                );

              }

            },


            
          ),
    );
  }
}