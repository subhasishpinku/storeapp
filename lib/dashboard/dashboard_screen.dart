import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:storeapp/constants/colors.dart';
import 'package:storeapp/dashboard/dashboard_provider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DashboardProvider dashboardProviders =
        Provider.of<DashboardProvider>(context, listen: true);
    final pageController = PageController(viewportFraction: 1.05);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/theme3.png"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)),
                color: AppColor.primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, right: 20.0, top: 70),
                    child: Container(
                      width: 64,
                      height: 64,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/store.png"),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0.0, right: 10.0, top: 75.0),
                    child: Column(
                      // Add Column here
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align text to start
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.montserrat(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: "Hello, ",
                                style: GoogleFonts.montserrat(
                                  color: AppColor.defaultWhite,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: "Subhasish Singha",
                                style: GoogleFonts.montserrat(
                                  color: AppColor.defaultWhite,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          // Add this Text widget for the additional text
                          "Dublin, Dublin",
                          style: GoogleFonts.montserrat(
                            color: AppColor.defaultWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            // homeCard(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: SizedBox(
                height: 210,
                width: double.infinity,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: dashboardProviders.demo.length,
                  onPageChanged: (int index) {
                    dashboardProviders.pageIndex.value = index;
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return FractionallySizedBox(
                      widthFactor: 1 / pageController.viewportFraction,
                      child: Container(
                        child: dashboardProviders
                            .demo[dashboardProviders.pageIndex.value],
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Obx(
              () => Center(
                child: DotsIndicator(
                  decorator: const DotsDecorator(
                    activeColor: Color(0xFF162248),
                  ),
                  dotsCount: dashboardProviders.demo.length,
                  position: dashboardProviders.pageIndex.value.toDouble(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    "STORE NAME",
                    style: TextStyle(
                      color: AppColor.defaultdarkblue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        // Column(
                        //   children: [
                        //     Container(
                        //       padding: const EdgeInsets.all(30.0),
                        //       decoration: BoxDecoration(
                        //         color: AppColor.primaryColor,
                        //         borderRadius: BorderRadius.circular(10),
                        //       ),
                        //       child: Image.asset(
                        //         "assets/icons/badge-check.png",
                        //       ),
                        //     ),
                        //     const Text('Verification')
                        //   ],
                        // ),
                        Column(
                          children: [
                            IconButtonElement(
                              onTap: () {},
                              icon: const Icon(
                                Icons.storage_sharp,
                                size: iconSize,
                                color: AppColor.defaultWhite,
                              ),
                              label: 'STORE 1',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButtonElement(
                          onTap: () {},
                          icon: const Icon(
                            Icons.storage_sharp,
                            size: iconSize,
                            color: AppColor.defaultWhite,
                          ),
                          label: 'STORE 2',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButtonElement(
                          onTap: () {},
                          icon: const Icon(
                            Icons.storage_sharp,
                            size: iconSize,
                            color: AppColor.defaultWhite,
                          ),
                          label: 'STORE 3',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButtonElement(
                          onTap: () {},
                          icon: const Icon(
                            Icons.storage_sharp,
                            size: iconSize,
                            color: AppColor.defaultWhite,
                          ),
                          label: 'STORE 4',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            IconButtonElement(
                              onTap: () {},
                              icon: const Icon(
                                Icons.storage_sharp,
                                size: iconSize,
                                color: AppColor.defaultWhite,
                              ),
                              label: 'STORE 5',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButtonElement(
                          onTap: () {},
                          icon: const Icon(
                            Icons.storage_sharp,
                            size: iconSize,
                            color: AppColor.defaultWhite,
                          ),
                          label: 'STORE 6',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

const double iconSize = 50;
const double textFontSize = 14;

class IconButtonElement extends StatelessWidget {
  final Function onTap;
  final Widget icon;
  final String label;

  const IconButtonElement({
    super.key,
    required this.onTap,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment:
                      Alignment.center, // Aligns child (icon) to the center

                  child: SizedBox(
                    width: iconSize,
                    height: iconSize,
                    child: icon,
                  ),
                ),
              ),
              Text(
                label,
                style: const TextStyle(
                  fontSize: textFontSize,
                  color: AppColor.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
