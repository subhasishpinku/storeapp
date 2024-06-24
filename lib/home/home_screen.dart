import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:storeapp/asset_details/asset_list_screen.dart';
import 'package:storeapp/constants/colors.dart';
import 'package:storeapp/dashboard/dashboard_screen.dart';
import 'package:storeapp/home/home_provider.dart';
import 'package:storeapp/screens/first_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime? lastPressed;
    return WillPopScope(
      onWillPop: () async {
        DateTime now = DateTime.now();
        if (lastPressed == null ||
            now.difference(lastPressed!) > const Duration(seconds: 2)) {
          Fluttertoast.showToast(msg: 'Back again to exit');
          lastPressed = now;
          return Future.value(false); // do not exit the app
        }
        return Future.value(true); // exit the app
      },
      child: Scaffold(
        body: Consumer<HomeProvider>(
          builder: (context, tabProvider, child) {
            return IndexedStack(
              index: tabProvider.currentIndex,
              children: const [
                DashboardScreen(),
                AssetListScreen(),
                FirstScreen(),
              ],
            );
          },
        ),
        bottomNavigationBar: Consumer<HomeProvider>(
          builder: (context, tabProvider, child) {
            return Container(
              margin: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 199, 217, 232),
                  blurRadius: 10,
                  blurStyle: BlurStyle.outer,
                  spreadRadius: 2,
                  offset: Offset.fromDirection(.2),
                )
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: BottomNavigationBar(
                currentIndex: tabProvider.currentIndex,
                onTap: (index) {
                  tabProvider.setTabIndex(index);
                },
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedItemColor: AppColor.primaryColor,
                backgroundColor: Colors.transparent,
                // showUnselectedLabels: true,
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                items: const [
                  BottomNavigationBarItem(
                    icon: FaIcon(FontAwesomeIcons.house),
                    label: 'Dashboard',
                  ),
                  BottomNavigationBarItem(
                    icon: FaIcon(FontAwesomeIcons.list),
                    label: 'Asset List',
                  ),
                  BottomNavigationBarItem(
                    icon: FaIcon(FontAwesomeIcons.user),
                    label: 'Profile',
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
