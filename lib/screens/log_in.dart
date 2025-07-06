import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ui_v2_1_rich_soinc/screens/sign_up.dart';
import 'package:ui_v2_1_rich_soinc/widgets/custom_button.dart';
import 'package:ui_v2_1_rich_soinc/widgets/custom_logo.dart';
import 'package:ui_v2_1_rich_soinc/widgets/custome_text_field.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            body: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 30,),
                      CustomLogo(),
                      Text(
                        'Welcome back!',
                        style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Log in to existing LOGO account',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 14),
                      CustomeTextField(
                        txController: userName,
                        text: 'Username',
                        icon: Icons.person_outline,
                      ),
                      const SizedBox(height: 14),
                      CustomeTextField(
                        txController: password,
                        text: 'Password',
                        icon: Icons.lock_outline,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      CustomButton(text: 'LOG IN'),
                      const SizedBox(height: 14),
                      Text(
                        'Or sign up using ',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Ionicons.logo_facebook,
                            size: 30,
                            color: Colors.blueAccent,
                          ),
                          const SizedBox(width: 14),
                          const Icon(
                            Ionicons.logo_google,
                            size: 30,
                            color: Colors.red,
                          ),
                          const SizedBox(width: 14),
                          const Icon(
                            Ionicons.logo_apple,
                            size: 30,
                            color: Colors.black,
                          ),
                        ],
                      ),
      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextButton(
                            onPressed:
                                () => Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (builder) => SignUp()),
                                ),
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 30,
            child: SvgPicture.asset('assets/images/box2.svg',height: 120,width: 150,),
          ),
          Positioned(child: SvgPicture.asset('assets/images/box1.svg',height: 120,width: double.infinity,)),
        ],
      ),
    );
  }
}
