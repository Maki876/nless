import 'package:flutter/material.dart';
import 'package:nless/components/card.dart';
import 'package:nless/components/google/popularcards.dart';

import 'package:nless/components/square.dart';
// import 'package:nless/menus/drawer.dart';
import 'package:nless/screen/accounts_screen.dart';
import 'package:nless/screen/delivery.dart';

final List<Map<String, dynamic>> foodch = [
  //burger
  {
    'tittle': 'Burger',
    'images': 'assets/burger.jpeg',
    'subtittle': 'taste our best'
  },

  {
    'tittle': 'Burger',
    'images': 'assets/burgercheesse.jpg',
    'subtittle': 'taste our best'
  },
  {
    'tittle': 'Burger',
    'images': 'assets/beef-burger.jpg',
    'subtittle': 'taste our best'
  },
  {
    'tittle': 'Burger',
    'images': 'assets/burgerbacon.jpeg',
    'subtittle': 'taste our best'
  },
  //pizza
  {
    'tittle': 'Pizza',
    'images': 'assets/pizzach.jpg',
    'subtittle': 'taste our best pizza'
  },

  {
    'tittle': 'Pizza',
    'images': 'assets/pizzas.jpeg',
    'subtittle': 'taste our best pizza'
  },
  {
    'tittle': 'Pizza',
    'images': 'assets/pi.jpg',
    'subtittle': 'taste our best pizza'
  },
  //salad
  // {
  //   'tittle': 'Salad',
  //   'images': 'assets/salad.png',
  //   'subtittle': 'taste our best salads'
  // },
  {
    'tittle': 'Salad',
    'images': 'assets/salads.jpg',
    'subtittle': 'taste our best salads'
  },
  {
    'tittle': 'Salad',
    'images': 'assets/sala.jpeg',
    'subtittle': 'taste our best salads'
  },
  {
    'tittle': 'Salad',
    'images': 'assets/sal.jpg',
    'subtittle': 'taste our best salads'
  },
  {
    'tittle': 'Salad',
    'images': 'assets/s.jpeg',
    'subtittle': 'taste our best salads'
  },
  //pasta
  {
    'tittle': 'pasta',
    'images': 'assets/pastapar.jpg',
    'subtittle': 'taste our best pasta parmaesan'
  },
  {
    'tittle': 'pasta',
    'images': 'assets/pasta-vodka.jpeg',
    'subtittle': 'taste our best pasta parmaesan'
  },
  {
    'tittle': 'pasta',
    'images': 'assets/pastapic.jpeg',
    'subtittle': 'taste our best pasta parmaesan'
  },
  {
    'tittle': 'pasta',
    'images': 'assets/pastr.jpeg',
    'subtittle': 'taste our best pasta parmaesan'
  },
  {
    'tittle': 'pasta',
    'images': 'assets/pastabaco.jpeg',
    'subtittle': 'taste our best pasta parmaesan'
  },
  {
    'tittle': 'pasta',
    'images': 'assets/pastashrimp.jpeg',
    'subtittle': 'taste our best pasta parmaesan'
  },
  {
    'tittle': 'pasta',
    'images': 'assets/pastafe.jpeg',
    'subtittle': 'taste our best pasta parmaesan'
  },
  // Add more items as needed
];

class HomePage extends StatefulWidget {
  // final String text;
  final List<Map<String, dynamic>> items = [
    {'tittle': 'Pizza', 'image': 'assets/pizza.png'},
    {'tittle': 'Burger', 'image': 'assets/burgericon.png'},
    {'tittle': 'Salad', 'image': 'assets/salad.png'},
    {'tittle': 'Seafood', 'image': 'assets/seafood.png'},
    {'tittle': 'pasta', 'image': 'assets/pasta.png'},
    {'tittle': 'Vegan', 'image': 'assets/vegan.png'},
    // Add more items as needed
  ];

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedcategory = 'favorite';
  @override
  Widget build(BuildContext context) {
    // final _Provider = Provider.of<FoodItemsProvider>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const googlemap()));
          },
          backgroundColor: Colors.orange,
          child: const Icon(Icons.location_searching_rounded)),
      // drawer: const Drawer(
      //   backgroundColor: Colors.black,
      //   child: drawerh(),
      // ),
      body:
          // SingleChildScrollView(
          //   child:
          SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // GestureDetector(
                      //   child: Icon(Icons.menu),
                      //   onTap: () => Navigator.push(context,
                      //       MaterialPageRoute(builder: (context) => drawerh())),
                      // ),
                      //  drawer: Drawer( child: drawerh()),
                      // const Text(
                      //   'Home',
                      //   style: TextStyle(fontSize: 20),
                      // ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Accounts())),
                        child: Container(
                          margin: const EdgeInsets.only(top: 9),
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/person.png'))),
                        ),
                      )
                    ],
                  ),
                ),
                // const SizedBox(
                //   height: 6,
                // ),
                //search box
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: 'What Do you want to eat?',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),

                // categories
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Category',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //listview
                      SizedBox(
                          height: 100,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: widget.items.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedcategory = widget.items[index]
                                            ['tittle']
                                        .toLowerCase();
                                  });
                                },
                                child: Expanded(
                                  child: Mysquare(
                                    tittle: widget.items[index]['tittle'],
                                    image: widget.items[index]['image'],
                                    //  tittle: null,
                                  ),
                                ),
                              );
                            },
                          )),
                      const SizedBox(height: 3),
                      const Row(
                        children: [
                          Text(
                            'favorite',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      //fav listview
                      SizedBox(
                        height: 243,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: foodch.length,
                            itemBuilder: (context, index) {
                              // Only show items for the selected category
                              if (foodch[index]['tittle'].toLowerCase() ==
                                  selectedcategory) {
                                return Expanded(
                                  child: Mycard(
                                    index: index,
                                    tittle: foodch[index]['tittle'],
                                    image: foodch[index]['images'],
                                    subtittle: foodch[index]['subtittle'],
                                  ),
                                );
                              } else {
                                return const SizedBox(); // Empty container for other categories
                              }
                            }),
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Text(
                            'popular',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      //popular listview
                      SizedBox(
                        height: 170,
                        child: ListView.builder(
                            // scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: widget.items.length,
                            itemBuilder: (context, index) {
                              return Expanded(
                                child: Popucard(
                                  text: foodch[index]['tittle'],
                                  images: foodch[index]['images'],
                                  subtittle: foodch[index]['subtittle'],
                                ),
                              );
                            }),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     FloatingActionButton(
                      //         onPressed: () {
                      //           Navigator.push(
                      //               context,
                      //               MaterialPageRoute(
                      //                   builder: (context) => googlemap()));
                      //         },
                      //         child:
                      //             const Icon(Icons.location_searching_rounded)),
                      //   ],
                      // )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      //),
    );
  }
}

// class FoodItem {
//   final String title;
//   final String image;
//   bool isFavorite;

//   FoodItem({
//     required this.title,
//     required this.image,
//     this.isFavorite = false,
//   });
// }
