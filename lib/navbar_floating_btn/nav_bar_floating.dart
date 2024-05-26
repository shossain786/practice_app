import 'package:flutter/material.dart';
import 'package:practice_app/navbar_floating_btn/nav_bar_floating_btn_main.dart';

class MyNavBarPage extends StatefulWidget {
  const MyNavBarPage({super.key});

  @override
  State<MyNavBarPage> createState() => _MyNavarPageState();
}

class _MyNavarPageState extends State<MyNavBarPage> {
  int _selectedIndex = 0;
  static TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: kColorScheme1.onPrimaryContainer,
  );
  final List<Widget> _myWidgets = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Laptop',
      style: optionStyle,
    ),
    Text(
      'Index 2: Business',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: kColorScheme1.secondaryContainer,
            ),
            label: 'Home',
            backgroundColor: kColorScheme1.onPrimaryContainer,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.laptop_mac,
                color: kColorScheme1.secondaryContainer,
              ),
              label: 'Laptop'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
                color: kColorScheme1.secondaryContainer,
              ),
              label: 'Business'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: kColorScheme1.secondaryContainer,
              ),
              label: 'Settings')
        ],
        onTap: _onItemTapped,
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating Action Button Pressed!');
        },
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Icon(
          Icons.favorite,
          color: kColorScheme1.onPrimaryContainer,
        ),
      ),
    );
  }
}
