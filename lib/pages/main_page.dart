// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_integration/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) =>
            snapshot.hasData ? HomePage() : LoginPage(),
      ),
    );
  }
}
