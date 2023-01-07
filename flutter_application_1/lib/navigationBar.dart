import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile/ViewProfile.dart';
import 'package:flutter_application_1/docs.dart';
import 'package:flutter_application_1/profile/ViewProfile.dart';
import 'package:flutter_application_1/wallet/wallet.dart';
import 'package:flutter_application_1/wallet/wallet.dart';

class navigationBar extends StatefulWidget {
  final String Currentusername;
  const navigationBar({super.key, required this.Currentusername});

  // :super(key: key);

  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  int _selectedIndex = 0;
  // List<Widget> _widgetOptions = <Widget>[
  //   wallet(
  //     Currentusername: 'something',
  //   ),
  //   docs(),
  //   ViewProfile()
  // ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      wallet(
        Currentusername: widget.Currentusername,
      ),
      docs(),
      ViewProfile()
    ];
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFF8A70BE),
          backgroundColor: Color(0xFF0F0C07),
          unselectedItemColor: Color(0xFF4E5053),
          selectedFontSize: 13,
          iconSize: 30,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.vpn_key_outlined),
              label: 'Passwords',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.description_outlined),
              label: 'Assets',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap),
    );
  }
}
