// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:storeapp/constants/colors.dart';

Widget homeCard() {
  return Container(
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: AppColor.primaryColor,
      borderRadius: BorderRadius.circular(
        20,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Comming Asset",
          style: TextStyle(
            color: AppColor.defaultWhite,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Asset Name',
                    style: TextStyle(
                      color: AppColor.defaultWhite,
                      // fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' QR\nCode',
                        style: TextStyle(
                          color: AppColor.defaultWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Image.asset("assets/images/home_card.png"),
          ],
        ),
      ],
    ),
  );
}
