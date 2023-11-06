import 'package:flutter/material.dart';
import 'package:task1/services/repositories.dart';
import 'package:task1/services/sharedPreferencesHelper.dart';
import 'package:task1/utils/apiurls.dart';
import 'package:task1/views/home.dart';
import 'package:task1/views/signup.dart';

import '../utils/utils.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool loginFailed = false;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "LOGIN",
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Form(
          key: loginKey,
          child: Column(
            children: [
              Image.network(
                  "https://cdn-icons-png.flaticon.com/512/5087/5087579.png",
                  height: 100),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: userNameController,
                    decoration: InputDecoration(
                      labelText: 'UserName',
                      hintText: 'Name',
                      filled: true,
                      fillColor: Colors.grey,
                      prefixIcon: const Icon(Icons.account_circle_outlined),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    validator: (val) {
                      return Utils.checkName(name: val ?? "");
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock_outlined),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      validator: (val) {
                        return Utils.checkPassword(password: val ?? "");
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  onPressed: () async {
                    if (loginKey.currentState!.validate()) {
                      print(userNameController.text);
                      print(passwordController.text);
                      if (await Repositories.postLogin(
                          url: ApiUrls.loginUrl,
                          username: userNameController.text,
                          password: passwordController.text,
                          context: context)) {
                        setState(() {
                          loginFailed = false;
                        });
                        await SharedPreferencesHelper.saveUserName(
                            userNameValue: userNameController.text);
                        await ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Successfully Logged In")));
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      } else {
                        setState(() {
                          loginFailed = true;
                        });
                      }
                    } else {
                      await ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Not Logged In!!")));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    //  padding: const EdgeInsets.all(20),
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              loginFailed
                  ? Text(
                      "Login Failed",
                      style: TextStyle(color: Colors.red),
                    )
                  : SizedBox(),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.blue),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
