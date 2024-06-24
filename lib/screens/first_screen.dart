import 'package:flutter/material.dart';
import 'package:storeapp/constants/colors.dart';
import 'package:storeapp/screens/login_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 500,
                decoration: new BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: new BorderRadius.only(
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0))),
                child: Center(
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset(
                      "assets/images/store.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 365,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.fromLTRB(100.0, 10.0, 100.0, 10.0),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            AppColor.primaryColor,
                            AppColor.yellowColor
                          ]),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: InkWell(
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const LoginScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 240,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      child: InkWell(
                        child: const Center(
                          child: Text(
                            "Create an Account",
                            style: TextStyle(
                                color: AppColor.primaryColor, fontSize: 12.0),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
