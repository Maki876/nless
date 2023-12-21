import 'package:flutter/material.dart';
import 'package:nless/models/dropdown.dart';
import 'package:nless/models/selectdropdown.dart';
// import 'package:nless/components/google/ordercard.dart';
import 'package:nless/screen/home-page.dart';

class Order_p extends StatelessWidget {
  const Order_p({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.black45,
              height: 900, // Adjust the height as needed
              child:
                  // Text('data')
                  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 300,
                    child: Image.asset(
                      'assets/pi.jpg',
                      height: 100,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 14.0, left: 6),
                  child: GestureDetector(
                    child: const Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.white,
                    ),
                    onTap: () =>
                        Navigator.pop(context), // Use Navigator.pop to go back
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0, right: 6),
                  child: GestureDetector(
                    child: const Icon(
                      Icons.shopping_cart,
                      size: 25,
                      color: Colors.white,
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    ),
                  ),
                ),
              ],
            ),
            // Positioned(
            //     child: Container(
            //   height: 400,
            //   width: double.infinity,
            //   decoration: const BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(15),
            //         topRight: Radius.circular(15)),
            //   ),

            Positioned(
                top: 245, // Adjust the position of the text as needed
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 400,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 100, top: 20),
                        child: Text(
                          'American beef burger',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20.0, top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Us.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 26),
                            ),
                            Text(
                              '750',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 200,
                      // ),
                      const Padding(
                        padding: EdgeInsets.only(left: 290),
                        child: Text(
                          '/ per Portion',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 260.0),
                        child: Text(
                          'Description',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                      ),
                      const Text(
                        'Description for pizza that you are not getting',
                        style: TextStyle(fontSize: 20),
                      ),
                      const Divider(
                        thickness: 10,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Customize Your Order',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                      const MyDropdown(),
                      const SizedBox(
                        height: 5,
                      ),
                      const Dropdown(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            child: const Text('Order Now'),
                          ),
                          ElevatedButton(
                              onPressed: () {}, child: const Text('CheckOut'))
                        ],
                      )
                    ],
                  ),
                )),

            // Container(
            //   height: double.infinity,
            //   width: double.infinity,
            //   color: Colors.orange,
            //   child: Container(
            //     width: 300,
            //     decoration: const BoxDecoration(
            //       borderRadius: BorderRadius.only(
            //           bottomLeft: Radius.circular(15),
            //           bottomRight: Radius.circular(15)),
            //     ),
            //   ),
            // ),
            // const Positioned(
            //   left: 1,
            //   right: 0,
            //   bottom: 450,
            //   height: 400,
            //   child: Image(
            //     image: AssetImage(
            //       'assets/add.png',
            //     ),
            //     fit: BoxFit.fitWidth,
            //   ),
            // ),
            // Positioned(
            //   child: Padding(
            //     padding: const EdgeInsets.only(right: 12),
            //     child: GestureDetector(
            //       child: const Icon(
            //         Icons.arrow_back,
            //         size: 25,
            //         color: Colors.white,
            //       ),
            //       onTap: () => HomePage(),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   right: 0,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 12),
            //     child: GestureDetector(
            //       child: const Icon(
            //         Icons.shopping_cart,
            //         size: 25,
            //         color: Colors.white,
            //       ),
            //       onTap: () => Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => HomePage())),
            //     ),
            //   ),
            // ),
            // Positioned(
            //     child: Container(
            //   height: 400,
            //   width: double.infinity,
            //   decoration: const BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(15),
            //         topRight: Radius.circular(15)),
            //   ),
            //   child: const Column(
            //     children: [
            //       Text('hello'),
            //     ],
            //   ),
            // )),
          ],
        ),
      ),
    );
  }
}
