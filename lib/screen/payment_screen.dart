import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0; // To keep track of the current page index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back),
                      Center(
                          child: Text(
                        'payment',
                        style: TextStyle(fontSize: 20),
                      )),
                      Icon(
                        Icons.add,
                        size: 26,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    height: 125.0, // Set the height of the carousel
                    autoPlay: true, // Enable auto-play
                    aspectRatio: 16 / 9, // Set aspect ratio as needed
                    enlargeCenterPage: true, // Make the centered item larger
                    enableInfiniteScroll: true, // Allow infinite scrolling
                    viewportFraction:
                        0.8, // Set the fraction of the viewport to show
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index; // Update the current page index
                      });
                    },
                  ),
                  items: [
                    // Wrap each image in a Container with your desired styling
                    Container(
                      height: 125,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/imgvisa.webp',
                        colorBlendMode: BlendMode.clear,
                      ), // Use Image.asset to load the image
                    ),
                    Container(
                      height: 125,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset('assets/imgvisa.webp'),
                    ),
                    Container(
                      height: 125,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset('assets/imgvisa.webp'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3, // Replace with the total number of carousel items
                    (index) {
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Colors.blue // Color of the active dot
                              : Colors.grey, // Color of inactive dots
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Name on card',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    // obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Card Number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    // obscureText: true,
                    keyboardType: TextInputType.number, maxLength: 16,
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 140,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'CVC Number',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          obscureText: false,
                          keyboardType: TextInputType.number,
                          maxLength: 6,
                        ),
                      ),
                      SizedBox(
                        width: 140,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Expire Date',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          obscureText: true,
                          keyboardType: TextInputType.number,
                          maxLength: 6,
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text('add payment method'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
