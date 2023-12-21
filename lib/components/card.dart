// import 'package:flutter/foundation.dart';
// import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nless/screen/order_screen.dart';
// import 'package:provider/provider.dart';

class Mycard extends StatelessWidget {
  final String tittle;
  final String image;
  final String subtittle;
  final int index;
  const Mycard(
      {required this.image,
      required this.subtittle,
      required this.tittle,
      required this.index,
      super.key});

  @override
  Widget build(BuildContext context) {
    // final foodItemProvider =
    //     Provider.of<FoodItemsProvider>(context, listen: false);
    // final foodItem = foodItemProvider.foodItems[index];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 6),
      child: Container(
        height: 295,
        width: 199,
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            // color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0, 3),
                  blurRadius: 10)
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(children: [
            GestureDetector(
              onDoubleTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Order_p())),
              // child: Container(
              //   decoration: const BoxDecoration(
              //       borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(15),
              //           topRight: Radius.circular(15))),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Image(
                  image: AssetImage(image),
                  height: 95,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
              //   ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              tittle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(subtittle,
                style: const TextStyle(
                  fontSize: 15,
                )),
            const SizedBox(
              height: 6,
            ),
            RatingBar.builder(
              initialRating: 4,
              minRating: 1,
              direction: Axis.horizontal,
              itemCount: 5,
              itemSize: 20,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4),
              itemBuilder: (context, _) =>
                  Icon(Icons.star, color: Colors.red[600], size: 10),
              onRatingUpdate: (index) {},
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  '\$10',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                // IconButton(
                //   icon: Icon(
                // foodItem.isFavorite
                //     ? Icons.favorite
                //     : Icons.favorite_border,
                //   color: Colors.red,
                // ),

                // onPressed: () {
                //   foodItemProvider.togglefavorite(index);
                // },
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

// class FoodItemsProvider {
//   get foodItems => null;

//   void togglefavorite(int index) {}
// }

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
