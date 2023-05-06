import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/features/auth/prsentation/pages/login/login_view.dart';

import 'features/auth/prsentation/home_screen/home_screen.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Homescreen();
          } else {
            return LoginView();
          }
        },
      ),
    );
  }

  //init() {}
}
