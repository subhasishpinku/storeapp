import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storeapp/constants/colors.dart';

RxBool _passwordVisible = false.obs;

Widget createdTextField({
  IconData? prefixIcon,
  Widget? suffixIcon,
  bool? obscureText,
  String? label,
  TextEditingController? controller,
  TextInputType? keyboardType,
  String? prefixText,
  validator,
  void Function(String)? onSaved,
}) {
  return Container(
    padding: const EdgeInsets.only(left: 10, right: 10),
    margin: const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 10),
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: const Color.fromARGB(255, 199, 217, 232),
        blurRadius: 10,
        blurStyle: BlurStyle.outer,
        spreadRadius: 2,
        offset: Offset.fromDirection(.2),
      )
    ], borderRadius: BorderRadius.circular(10), color: Colors.white),
    child: TextFormField(
      validator: validator,
      // controller: controller,
      onSaved: (value) => onSaved?.call(value ?? ""),

      keyboardType: keyboardType,

      obscureText: obscureText! ? !_passwordVisible.value : false,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                size: 25,
                color: AppColor.primaryColor,
              )
            : null,
        labelText: label,
        labelStyle: TextStyle(
          color: AppColor.defaultBlack.withOpacity(0.8),
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        isDense: true,
        border: InputBorder.none,
      ),
      // decoration: InputDecoration(
      //   prefixText: prefixText,
      //   contentPadding: EdgeInsets.zero,
      //   floatingLabelBehavior: FloatingLabelBehavior.never,
      //   labelText: label,
      //   prefixIcon: prefixIcon != null
      //       ? Icon(
      //           prefixIcon,
      //           size: 20,
      //           color: AppColor.primaryColor,
      //         )
      //       : null,
      //   suffixIcon: obscureText
      //       ? Obx(() {
      //           return IconButton(
      //             icon: Icon(_passwordVisible.value
      //                 ? Icons.visibility_off
      //                 : Icons.visibility),
      //             onPressed: () {
      //               _passwordVisible.value = !_passwordVisible.value;
      //             },
      //           );
      //         })
      //       : null,
      //   disabledBorder: InputBorder.none,
      //   border: OutlineInputBorder(
      //     borderSide: BorderSide.none,
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      // ),
    ),
  );
}
