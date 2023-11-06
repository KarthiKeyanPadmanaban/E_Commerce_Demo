import 'package:flutter/material.dart';
import 'package:task1/services/sharedPreferencesHelper.dart';
import 'package:task1/utils/utils.dart';
import 'package:task1/views/dashboard.dart';
import 'package:task1/views/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 2),
      () async {
        String loginToken = await SharedPreferencesHelper.getToken();

        await Utils.checkInternetStatus(context: context);
        if (loginToken.isNotEmpty) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Dashboard(),
          ));
        } else {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Login(),
          ));
        }
      },
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/gif/TIeR.gif'),
      ),
    );
  }
}
