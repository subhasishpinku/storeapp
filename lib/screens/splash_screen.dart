import 'package:flutter/material.dart';
import 'package:storeapp/constants/device_info.dart';
import 'package:storeapp/onboard.dart';
import 'package:storeapp/screens/first_screen.dart';
import 'package:storeapp/widgets/loading_animation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((_) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const OnboardScreen()),
          (Route route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/store.png',
                height: 250.0,
              ),
              SizedBox(height: DeviceInfo.height(context) * 0.3),
              const LoadingAnimation(),
            ],
          ),
        ],
      ),
    );
  }
}
