import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Popucard extends StatelessWidget {
  final String images;
  final String text;
  final String subtittle;
  const Popucard(
      {super.key,
      required this.subtittle,
      required this.text,
      required this.images});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 6),
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 154,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: const Offset(0, 3),
                  blurRadius: 10)
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Image(
                image: AssetImage(images),
                height: 80,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // SizedBox(
                    //   width: 90,
                    // ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                    )
                  ],
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
                  itemSize: 27,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                  itemBuilder: (context, _) =>
                      Icon(Icons.star, color: Colors.red[600], size: 10),
                  onRatingUpdate: (index) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '\$10',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.yellow[800],
                          ),
                          child: const Center(child: Icon(Icons.remove))),
                    ),
                    Container(
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow[900],
                        ),
                        child: const Center(child: Icon(Icons.add)))
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
