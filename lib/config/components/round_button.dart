import 'package:flutter/material.dart';
import 'package:movie_app/config/color/app_colors.dart';

class RoundButton extends StatelessWidget {
  final double height;
  final String title;
  final VoidCallback onPress;
  const RoundButton({
    super.key,
    this.height = 40,
    required this.title,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(16),
        ),
        height: height,
        child: Center(child: Text(title)),
      ),
    );
  }
}
