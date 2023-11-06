import 'package:flutter/material.dart';
import 'package:task1/services/apirequest.dart';
import 'package:task1/services/repositories.dart';
import 'package:task1/services/sharedPreferencesHelper.dart';
import 'package:task1/views/categorylist.dart';
import 'package:task1/views/login.dart';

import '../utils/apiurls.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Future<dynamic>? categories;
  String? saveUserName;

  //List<dynamic> ?categories;
  @override
  void initState() {
    categories = Repositories.getCategories(url: ApiUrls.caterogiesEndPoint);
    //ApiRequest.getData(url: ApiUrls.caterogiesEndPoint);
    //saveUserName = await SharedPreferencesHelper.getUserName();
    getUserName();
    print(saveUserName);
    // TODO: implement initState
    super.initState();
  }

  void _alertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              "Do you want to SignOut",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              MaterialButton(
                onPressed: () {
                  SharedPreferencesHelper.removeToken();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
                child: const Text("YES",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("NO",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
              ),
            ],
          );
        });
  }

  getUserName() async {
    saveUserName = await SharedPreferencesHelper.getUserName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        width: 200,
        child: Column(
          children: [
            SafeArea(
                child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 31,
              child: Text(saveUserName ?? ""),
            )
                // ProfilePicture(
                //   name: saveUserName ?? "",
                //   radius: 31,
                //   fontsize: 21,
                // ),
                ),
            ListTile(
              title: const Text("Profile"),
              leading: const Icon(Icons.person),
              onTap: () {
                print("Profile Pressed");
              },
            ),
            const Divider(
              color: Colors.red,
              height: 10,
            ),
            ListTile(
              title: const Text("About"),
              leading: const Icon(Icons.account_balance_wallet_outlined),
              onTap: () {
                print("Profile Pressed");
              },
            ),
            const Divider(
              height: 10,
            ),
            ListTile(
              title: const Text("SignOut"),
              leading: const Icon(Icons.logout),
              onTap: () {
                _alertDialog();
              },
            ),
          ],
        ),
      ),
      body: FutureBuilder(
          future: categories,
          builder: (context, snap) {
            if (snap.hasData) {
              return Center(
                child: ListView.builder(
                    itemCount: snap.data?.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    CategoryList(title: snap.data?[index]),
                              ));
                          print("Pressed");
                        },

                        child: Container(
                            padding: const EdgeInsets.all(20),
                            child: Text(snap.data?[index],
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            margin: const EdgeInsets.only(
                                left: 30, right: 50, top: 20, bottom: 10),
                            width: 50,
                            height: 70,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.blue,
                                    Colors.red,
                                  ],
                                ))),
                      );
                    }),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
