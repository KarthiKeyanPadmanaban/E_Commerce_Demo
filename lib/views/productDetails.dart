import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:task1/models/categoryApiResponseModel.dart';
import 'package:task1/utils/utils.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key, required this.categoryList});

  final CategoryList? categoryList;
  String? descriptionText;

  String Description =
      """" Clean Lines , versatile and timeless--the people shor returns with the nike air max 90 """;

  btnPressed() {
    print("Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_rounded),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            btnPressed();
          },
          backgroundColor: Colors.red,
          child: const Icon(Icons.shopping_basket),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                        categoryList?.image ??
                            "https://media.istockphoto.com/id/956501428/photo/sport-shoes-on-isolated-white-background.jpg?s=612x612&w=0&k=20&c=BdklqnfGUvf02-2CxYsw-AnrbE3e-B5zhE9JQILEEW4=",
                        fit: BoxFit.fill,
                        height: 300),
                    Container(
                      height: 200,
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              categoryList?.title ?? "",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //Text(),
                                RichText(
                                  text: TextSpan(
                                      text: ' \$',
                                      style: const TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                      children: [
                                        TextSpan(
                                            text: categoryList?.price
                                                    .toString() ??
                                                "",
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ))
                                      ]),
                                ),
                                IgnorePointer(
                                  ignoring: true,
                                  child: RatingBar.builder(
                                    ignoreGestures: false,
                                    initialRating: categoryList?.rating?.count
                                            ?.ceilToDouble() ??
                                        0,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    itemBuilder: (context, _) => const Icon(
                                      //categoryList?.rating ?? ""
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text(
                        "Description",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 10.0),
                      child: ExpandableText(
                        categoryList?.description ?? "",
                        expandText: '...',
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
