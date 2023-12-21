import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nless/components/google/applebtn.dart';

import 'package:nless/components/signuptextfeild.dart';
import 'package:nless/main.dart';
import 'package:nless/menus/drawer.dart';
import 'package:nless/screen/loing_page.dart';

void main() {
  runApp(const MyApp());
}

class User {
  final String email;
  final String password;

  User({
    required this.email,
    required this.password,
  });
}

class AuthService {
  // This class contains authentication-related methods.

  Future<String> registerWithCustomAuth(User user) async {
    try {
      // Implement your custom registration logic here
      // For a simple example, we'll assume registration is successful
      // if the username and password are not empty.
      if (user.email.isNotEmpty && user.password.isNotEmpty) {
        // Registration is successful. You can return a custom token here.
        return 'custom_authentication_token';
      } else {
        // Registration failed.
        throw Exception('Registration failed: Invalid username or password');
      }
    } catch (e) {
      // Handle errors
      throw Exception('Registration error: $e');
    }
  }
}

class SignUp_Page extends StatelessWidget {
  SignUp_Page({super.key});
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

//sign user in method
  void singuserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Colors.orange.shade400, Colors.orange.shade700])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Column(children: <Widget>[
                  Text('Sign up',
                      style: GoogleFonts.delaGothicOne(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  const Text(
                    'Welcome new user',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ])),
            const SizedBox(
              height: 70,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    // topRight: Radius.circular(50)
                  ),
                ),

                //Welcome New user

                child: Column(children: [
                  const SizedBox(
                    height: 37,
                  ),

                  //Email text feild
                  textfeild(
                      hinText: 'E-mail',
                      obscureText: false,
                      controller: _emailcontroller),
                  // Validator: (value){
                  //   if(value== null || value,isEmpty){
                  //     return "please enter a email";

                  //   }
                  //   return null;
                  // }

                  //password text feild
                  textfeild(
                      hinText: 'Password',
                      obscureText: true,
                      controller: _passwordcontroller),
                  //   Validator: (value){
                  //   if(value== null || value,isEmpty){
                  //     return "please enter a password";

                  //   }
                  //   return null;
                  // }

                  //Re-password
                  // const textfeild(hinText: 'Re-password', obscureText: true),
                  const SizedBox(
                    height: 30,
                  ),

                  //sign up button
                  // MyButton(
                  //   onTap: singuserIn,
                  //   text: 'Sign in',
                  // ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const drawerh()));
                      },
                      child: const Text('Sign in')),
                  const SizedBox(
                    height: 10,
                  ),

                  //or continue with
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 1,
                        width: 110,
                        color: Colors.black,
                      ),
                      const Text(
                        'Or continue with',
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        height: 1,
                        width: 110,
                        color: Colors.black,
                      ),
                    ],
                  ),

                  //google/appl sing in button
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //googl button
                      Mybutton(imagePath: 'assets/google.png'),
                      //apple button
                      Mybutton(imagePath: 'assets/apple.png')
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //alredy a member
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Are you a member?',
                        style: TextStyle(fontSize: 17),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: const Text(
                          'Login ',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
    // ),
  }
}
