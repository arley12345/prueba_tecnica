import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prueba_tecnica/models/user.dart';

class UserDetailsScreen extends StatelessWidget {
  final User user;
  UserDetailsScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(8),
              elevation: 10,
              child: Image.asset( width: MediaQuery.of(context).size.width* 0.4,'assets/user_image.jpg')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                RichText(
                text: TextSpan(
                  text: 'Name: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: user.name,
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 8),
            RichText(
                text: TextSpan(
                  text: 'Username: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: user.username,
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 8),
            RichText(
                text: TextSpan(
                  text: 'Email: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: user.email,
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 8),
            RichText(
                text: TextSpan(
                  text: 'Address: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '${user.address.street}, ${user.address.suite}, ${user.address.city}, ${user.address.zipcode}, ${user.address.geo.lat}, ${user.address.geo.lng}',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            
            SizedBox(height: 8),           
            RichText(
                text: TextSpan(
                  text: 'Phone: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: user.phone,
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 8),
             RichText(
                text: TextSpan(
                  text: 'Website: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: user.website,
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),                     
            SizedBox(height: 8),
            RichText(
                text: TextSpan(
                  text: 'Company: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '${user.company.name}, ${user.company.catchPhrase}, ${user.company.bs}',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),

              ],)
            
          ],
        ),
      ),
    );
  }
}
