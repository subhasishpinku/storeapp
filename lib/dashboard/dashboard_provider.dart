import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:storeapp/component/home_carousel_card.dart';

class DashboardProvider with ChangeNotifier {
  RxInt pageIndex = 0.obs;
  List<Widget> demo = [
    homeCard(),
    homeCard(),
    homeCard(),
    homeCard(),
    homeCard(),
  ];
}
