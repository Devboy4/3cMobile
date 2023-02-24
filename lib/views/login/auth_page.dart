import 'package:flutter/material.dart';
import 'package:vehicletrackingsystem/main.dart';
import 'package:vehicletrackingsystem/views/login/login_page.dart';
class User {
   late String email;
   late String password;
}
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        builder: (context, user) {
          // user is logged in
          print('kerem');
            print(user);
          if (user.hasData) {
            return MyHomePage();
          }
          // user is NOT logged in
          else {
            return LoginPage();
          }
        },
      ),
    );
  }
}