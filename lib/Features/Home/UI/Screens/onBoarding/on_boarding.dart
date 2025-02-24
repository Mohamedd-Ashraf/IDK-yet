import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/onBoarding/doc_logo_and_name.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(
              top: 30.h, 
              bottom: 30.h,
            ),
            child: Column (
              children: [
                DocLogoAndName(),
              ],
            ),
          ),
        ),
      )
    );
  }
}
