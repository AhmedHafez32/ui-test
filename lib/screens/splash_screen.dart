import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_v2_1_rich_soinc/screens/log_in.dart';
import 'package:ui_v2_1_rich_soinc/widgets/custom_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=>LogIn()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomLogo(),
                  SvgPicture.asset(
                    'assets/images/vector.svg',
                    width: double.infinity,
                    height: 400,
                  ),
                  Text(
                    'Lorem Ipsum',
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Lorem Ipsum is a dummy text\n     used as placeholder',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 40,
          bottom: 500,
          child: SvgPicture.asset('assets/images/line.svg'),
        ),
        Positioned(
          left: 14,
          bottom: 500,
          child: SvgPicture.asset('assets/images/light.svg'),
        ),
        Positioned(
          left: 95,
          bottom: 550,
          child: SvgPicture.asset('assets/images/line.svg'),
        ),
        Positioned(
          left: 69,
          bottom: 550,
          child: SvgPicture.asset('assets/images/light.svg'),
        ),
      ],
    );
  }
}
