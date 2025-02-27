import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Features/Home/UI/Widgets/onBoarding/button_and_text.dart';
import 'package:gedeed/Features/Home/UI/Widgets/onBoarding/logo_doc_picture.dart';

import '../../Widgets/onBoarding/logo_and_name.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(height: 50.h),
                DocLogoDocPicture(),
                OnBoardingButtonAndText(),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
