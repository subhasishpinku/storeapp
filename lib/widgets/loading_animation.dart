import 'package:flutter/material.dart';
import 'package:storeapp/constants/colors.dart';

/// A stateless widget that displays a loading animation.
///
/// This widget creates a centered circular progress indicator with a customizable appearance.
class LoadingAnimation extends StatelessWidget {
  /// Constructs a `LoadingAnimation` widget.
  ///
  /// Parameters:
  ///   [key] (Key?): An optional key for the widget.
  const LoadingAnimation({super.key});

  /// Builds the loading animation widget.
  ///
  /// This method constructs the UI for the loading animation, using a `CircularProgressIndicator`
  /// with a specified color, stroke width, and stroke alignment.
  ///
  /// Returns:
  ///   A `Widget` representing the loading animation.
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColor.primaryColor,
        strokeWidth: 5,
        strokeCap: StrokeCap.butt,
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
    );
  }
}
