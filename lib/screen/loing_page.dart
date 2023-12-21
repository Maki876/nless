import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nless/components/MyButton.dart';
import 'package:nless/components/MyTextField.dart';
import 'package:nless/components/google/applebtn.dart';
import 'package:nless/screen/sign_up.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernamecon = TextEditingController();
  final passwordcon = TextEditingController();
  //sign user in method
  void signUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // backgroundColor: Colors.orangeAccent,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [Colors.orange.shade400, Colors.orange.shade700])),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: const Icon(
                          Icons.arrow_back,
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp_Page())),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/icon.png')),
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.grey.withOpacity(0.5),
                        //       offset: const Offset(0, 3),
                        //       blurRadius: 10)
                        // ]
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Column(children: <Widget>[
                      Text('Log in',
                          style: GoogleFonts.delaGothicOne(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      const Text(
                        'Welcome Back',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ])),
                const SizedBox(height: 10),
                Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(50)),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          //this my username textfeild
                          MyTextFeild(
                            hintText: 'Username',
                            obscureText: false,
                            controller: usernamecon,
                          ),

                          //this is my password textfeild
                          MyTextFeild(
                            hintText: 'Password',
                            obscureText: true,
                            controller: passwordcon,
                          ),

                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Forget Pasword?',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          //log in button
                          MyButton(
                            onTap: signUser,
                            text: 'Login',
                          ),

                          // ElevatedButton(
                          //     onPressed: () {
                          //       Navigator.push(
                          //           context,
                          //           MaterialPageRoute(
                          //               builder: (context) => const drawerh()));
                          //     },
                          //     child: const Text('Login')),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Padding(padding: EdgeInsets.all(7)),
                                Container(
                                  height: 1,
                                  width: 101,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const Text(
                                  'or continue with',
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Container(
                                  height: 1,
                                  width: 101,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //googlebutton
                                Mybutton(imagePath: 'assets/google.png'),
                                //applebutton
                                Mybutton(imagePath: 'assets/apple.png')
                              ]),
                          const SizedBox(height: 10),
                          //not a member? Register now
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Not a member?'),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Register now',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          )
                        ],
                      )),
                ),
              ]),
        ));
  }
}
