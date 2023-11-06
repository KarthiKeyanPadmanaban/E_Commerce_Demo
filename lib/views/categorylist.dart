import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/models/categoryApiResponseModel.dart';
import 'package:task1/services/repositories.dart';
import 'package:task1/utils/apiurls.dart';
import 'package:task1/views/dashboard.dart';
import 'package:task1/views/productDetails.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key, required this.title});

  final String? title;

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  Future<dynamic>? categoryData;

  bool isLiked = false;
  Future<CategoryApiResponseModel>? categoryApiResponseModel;

  @override
  void initState() {
    getCategoryData(); // TODO: implement initState
    super.initState();
  }

  getCategoryData() {
    print("${ApiUrls.categoryProductUrl}${widget.title}");
    categoryData = Repositories.getJewelery(
        url: "${ApiUrls.categoryProductUrl}/${widget.title}");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: const Text("CATEGORIES"),
        centerTitle: true,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => (const Dashboard()),
                ));
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    widget.title?.toUpperCase() ?? "",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FutureBuilder(
              future: categoryData,
              builder: (context, snap) {
                if (snap.hasData) {
                  CategoryApiResponseModel categoryApiData =
                      CategoryApiResponseModel.fromJson(snap.data);
                  return Expanded(
                    child: SingleChildScrollView(
                        child: Expanded(
                      child: GridView.builder(
                        itemCount: categoryApiData.categoryList?.length ?? 0,
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.45,
                        ),
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            print("Tapped");
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  ProductDetails(categoryList: categoryApiData.categoryList?[index ?? 0], )));
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(20),
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.3),
                                  blurRadius: 4,
                                  offset: const Offset(6, 5), // Shadow position
                                ),
                              ],
                            ),
                            child: Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.025,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.lightBlue,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "30%",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              if (isLiked == true) {
                                                isLiked = false;
                                              } else {
                                                isLiked = true;
                                              }
                                            });
                                          },
                                          color: Colors.red,
                                          icon: !isLiked
                                              ? const Icon(CupertinoIcons.heart)
                                              : const Icon(
                                                  CupertinoIcons.heart_fill),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.network(
                                    categoryApiData
                                            ?.categoryList?[index ?? 0].image ??
                                        "",
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                  ),
                                  Expanded(
                                    child: Text(
                                        categoryApiData
                                                ?.categoryList?[index ?? 0]
                                                .title ??
                                            "",
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 18)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
                  );
                } else {
                  print(snap);
                  print("Helo");
                  return Center(
                    child: Image.asset(
                      'assets/gif/344-loader-15.gif',
                      height: 500,
                      width: 500,
                    ),
                  );
                }
              }),
        ],
      ),
    );
  }
}
