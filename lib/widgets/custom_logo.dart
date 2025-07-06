import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback:
          (Rect bounds) => LinearGradient(
        colors: [AppColors.prime, AppColors.second],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: Text(
        'LOGO',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 80,
          fontFamily: 'Prime',
          color: Colors.white,
        ),
      ),
    );
  }
}
