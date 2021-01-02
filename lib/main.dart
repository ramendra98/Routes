import 'package:flutter/material.dart';
import 'package:routing/Home_Page.dart';
import 'package:routing/Profilr_p.dart';
void main()
{
  runApp(Myapp());

}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fluter",

      initialRoute: '/',
      routes: {

        '/':(context)=>Home(),
        '/profile':(context)=>Profile(),
      },
    );
  }
}

