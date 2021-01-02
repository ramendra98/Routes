import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  Map userData={};
  @override
  Widget build(BuildContext context) {
   userData= ModalRoute.of(context).settings.arguments;

    return new Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text(
          userData['name']
        ),
      ),
    );
  }
}
