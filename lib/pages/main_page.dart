import 'package:cobalogin/pages/bottom_nav.dart';
import 'package:cobalogin/pages/home_page.dart';
import 'package:cobalogin/pages/login.dart';
import 'package:cobalogin/pages/main_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return BottomNavPage();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
