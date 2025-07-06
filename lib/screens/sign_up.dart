import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_v2_1_rich_soinc/screens/log_in.dart';
import 'package:ui_v2_1_rich_soinc/widgets/custom_button.dart';

import '../widgets/custome_text_field.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController txControll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Let’s Get Started!',
                  style: GoogleFonts.roboto(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Create an account on MNZL to get all features',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 14),
                CustomeTextField(
                  txController: txControll,
                  text: 'First Name',
                  icon: Icons.person_outline,
                ),
                const SizedBox(height: 14),
                CustomeTextField(
                  txController: txControll,
                  text: 'Last Name',
                  icon: Icons.person_outline,
                ),
                const SizedBox(height: 14),
                CustomeTextField(
                  txController: txControll,
                  text: 'Username',
                  icon: Icons.person_outline,
                ),
                const SizedBox(height: 14),
                CustomeTextField(
                  txController: txControll,
                  text: 'Email',
                  icon: Icons.email_outlined,
                ),
                const SizedBox(height: 14),
                CustomeTextField(
                  txController: txControll,
                  text: 'Password',
                  icon: Icons.lock_outline,
                ),
                const SizedBox(height: 14),
                CustomeTextField(
                  txController: txControll,
                  text: 'Confirm Password',
                  icon: Icons.lock_outline,
                ),
                const SizedBox(height: 14),
                CustomButton(text: 'Create'),
                const SizedBox(height: 14),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed:
                          () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (builder) => LogIn()),
                      ),
                      child: Text(
                        'Login here',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
