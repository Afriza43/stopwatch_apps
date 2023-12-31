// ignore_for_file: prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future logInButton() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          //KALAU MAU STYLING DISINI COK
          content: Text('Login gagal. Periksa email dan password Anda.',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/main_top.png',
                    height: 150,
                  ),
                ),

                Image.network(
                  "https://i.pinimg.com/originals/a9/4b/b0/a94bb056522bc6443ff49898b95b02c6.png",
                  width: 80,
                ),
                Text(
                  "KiwKiw",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),

                SizedBox(
                  height: 50,
                ),

                //email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.deepPurpleAccent),
                      ),
                      hintText: 'Email',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.deepPurpleAccent, // Ganti warna ikon
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.deepPurpleAccent, // Ganti warna border
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                //password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.deepPurpleAccent),
                      ),
                      hintText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.deepPurpleAccent, // Ganti warna ikon
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.deepPurpleAccent, // Ganti warna border
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),

                SizedBox(
                  height: 40,
                ),

                //signin button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: logInButton,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                //text daftar akun baru
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Belum mempunyai akun? "),
                      Text(
                        "Daftar sekarang",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'assets/images/login_bottom.png',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
