import 'package:flutter/material.dart';

import 'package:experthub/config.dart';
import 'package:experthub/utils/text_global.dart';
import 'package:experthub/screens/components/canvas_global.dart';
import 'package:experthub/screens/components/button_global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CanvasGlobal(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Logo
          Image.asset(
            'assets/images/logo.png',
            height: 192,
          ),

          const SizedBox(height: 30),

          // Title
          Text(
            'Say Hello To Your New App!',
            textAlign: TextAlign.center,
            style: kTitleText.copyWith(
              color: Config().kPrimaryColor,
            ),
          ),

          const SizedBox(height: 10),

          // Subtitle
          Text(
            'You\'ve just saved a week of development and\nheadaches!',
            textAlign: TextAlign.center,
            style: kBodyText.copyWith(
              color: Config().kBlack.withOpacity(0.6),
            ),
          ),

          const SizedBox(height: 30),

          // Button Sign In
          ButtonGlobal(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            txt: 'Sign In',
            txtcolor: Config().kWhite,
            bgcolor: Config().kPrimaryColor,
            borcolor: Colors.transparent,
            borwidth: 0,
            onPressed: () {
              
            },
          ),

          // Button Sign Up
          ButtonGlobal(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            txt: 'Sign Up',
            txtcolor: Config().kBlack.withOpacity(0.6),
            bgcolor: Config().kWhite,
            borcolor: Config().kGrey.withOpacity(0.9),
            borwidth: 2,
            onPressed: () {
              
            },
          ),

        ],
      ),
    );
  }
}