import 'package:flutter/material.dart';

class MyNavBarPage extends StatefulWidget {
  const MyNavBarPage({super.key});

  @override
  State<MyNavBarPage> createState() => _MyNavarPageState();
}

class _MyNavarPageState extends State<MyNavBarPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _myWidgets = <Widget>[
    const Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    const Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    const Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Nav Bar Demo'),
      ),
      body: Center(
        child: _myWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
