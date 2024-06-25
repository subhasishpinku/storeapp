// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:storeapp/constants/colors.dart';
// import 'package:storeapp/dashboard/dashboard_provider.dart';
// import 'package:storeapp/home/home_provider.dart';
// import 'package:storeapp/screens/splash_screen.dart';

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (_) => DashboardProvider(),
//         ),
//         ChangeNotifierProvider(create: (_) => HomeProvider()),
//       ],
//       child: const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: AppColor.primaryColor, // Explicitly set the primary color
//         focusColor: AppColor.primaryColor,
//         appBarTheme: const AppBarTheme(
//           backgroundColor: AppColor.primaryColor,
//         ),
//         textTheme: const TextTheme(
//           headlineLarge: TextStyle(fontFamily: "Helvetica Neue"),
//         ),
//         splashColor: Colors.transparent,
//         highlightColor: Colors.transparent,
//         colorScheme: ColorScheme.fromSwatch(
//           primarySwatch: createWhiteSwatch(),
//         ).copyWith(
//           secondary: AppColor.primaryColor,
//         ),
//       ),
//       home: const SplashScreen(),
//     );
//   }

//   MaterialColor createWhiteSwatch() {
//     const int whiteValue = 0xFFFFFFFF;
//     Map<int, Color> swatch = {
//       50: const Color(whiteValue),
//       100: const Color(whiteValue),
//       200: const Color(whiteValue),
//       300: const Color(whiteValue),
//       400: const Color(whiteValue),
//       500: const Color(whiteValue),
//       600: const Color(whiteValue),
//       700: const Color(whiteValue),
//       800: const Color(whiteValue),
//       900: const Color(whiteValue),
//     };
//     return MaterialColor(whiteValue, swatch);
//   }
// }

import 'package:flutter/material.dart';
import 'package:storeapp/screens/ColdRoomCalculatorScreen%20.dart';

void main() {
  runApp(ColdRoomCalculatorApp());
}

class ColdRoomCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cold Room Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(), // Here const is used for HomePage
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         const SizedBox(height: 100), // Top spacing
          Image.asset(
            'assets/images/luve_logo.webp', // Ensure your image path is correct
            height: 100,
          ),
          const SizedBox(height: 20),
          const Text(
            'STORE GROUP',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
         const  Text(
            'leadership with passion',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Cold Room Calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ColdRoomCalculator()),
              );
            },
            child:  Text('LOGIN'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              minimumSize: Size(200, 50),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('ABOUT'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  minimumSize: Size(100, 50),
                ),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('SETTINGS'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  minimumSize: Size(100, 50),
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Copyright©2012-2024 STORE Group\nThis program is provided as is without any guarantees or warranty.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(height: 20), // Bottom spacing
        ],
      ),
    );
  }
}
