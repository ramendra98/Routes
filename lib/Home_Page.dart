import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedItem=0;
  void _onTapItem(int index)
  {
    setState(() {
      _selectedItem=index;

    });
    if(index==4)
      {
        Navigator.pushNamed(context, '/profile');
      }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Rautin Page..'),
        ),

      ),
      body: Center(
        child: Text(
            'Current Index-$_selectedItem',
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.search),title: Text('Search')),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle),title: Text('Add')),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),title: Text('Favorite')),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded),title: Text('Profile')),
        ],
        currentIndex: _selectedItem,
        onTap: _onTapItem,
      ),
    );
  }
}

