import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  const Accounts({super.key});

  @override
  State<Accounts> createState() => _AcountsState();
}

class _AcountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Positioned(
                  child: Container(
                color: Colors.orange,
                height: 300,
                width: double.infinity,
              )),
              Positioned(
                  child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(10))),
              ))
            ],
          ),
          Positioned(
              top: 200,
              left: 100,
              child: Container(
                height: 170,
                width: 230,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.9),
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: const Column(children: [
                  Padding(padding: EdgeInsets.only(top: 55)),
                  Text(
                    'causem@gmail.com',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Icon(
                          Icons.message,
                          color: Colors.black,
                        ),
                      ),
                      // Divider(
                      //   color: Colors.blue,
                      //   thickness: 10,
                      // ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                    ],
                  )
                ]),
              )),
          // Positioned(
          //     child: Container(
          //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          //   child: const Image(image: AssetImage('assets/person.png')),
          // )),
          Positioned(
              left: 169,
              top: 140,
              child: Container(
                height: 99,
                width: 99,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image: AssetImage('assets/user.png')),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: const Offset(0, 3),
                          blurRadius: 10)
                    ]),
              )),
          Positioned(
            top: 400,
            left: 46,
            child: Container(
              height: 360,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.orange,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: ListView(
                  padding: const EdgeInsets.only(left: 1),
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.person),
                      trailing: const Icon(Icons.arrow_circle_right),
                      title: const Text('Accounts'),
                      onTap: () {
                        // Handle the 'Accounts' tap action here
                      },
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      trailing: const Icon(Icons.arrow_circle_right),
                      leading: const Icon(Icons.security),
                      title: const Text('Privacy'),
                      onTap: () {
                        // Handle the 'Privacy' tap action here
                      },
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      trailing: const Icon(Icons.arrow_circle_right),
                      leading: const Icon(Icons.chat),
                      title: const Text('Chat'),
                      onTap: () {
                        // Handle the 'Chat' tap action here
                      },
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      trailing: const Icon(Icons.arrow_circle_right),
                      leading: const Icon(Icons.help),
                      title: const Text('Help'),
                      onTap: () {
                        // Handle the 'Help' tap action here
                      },
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      leading: const Icon(Icons.exit_to_app),
                      title: const Text('Logout'),
                      onTap: () {
                        // Handle the 'Logout' tap action here
                      },
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
