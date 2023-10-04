import 'package:cobalogin/pages/bantuan.dart';
import 'package:cobalogin/pages/main_menu.dart';
import 'package:cobalogin/pages/stopwatch.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedIndex = 0; // Indeks item terpilih pada BottomNavigationBar

  // Daftar halaman yang akan ditampilkan sesuai dengan item yang dipilih
  final List<Widget> _pages = [
    MainMenu(),
    BantuanPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_center),
            label: 'Bantuan',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.indigo[900],
        onTap: _onItemTapped,
      ),
    );
  }

  // Fungsi yang dipanggil saat item pada BottomNavigationBar ditekan
}
