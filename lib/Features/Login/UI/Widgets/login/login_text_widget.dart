import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';

class LoginTextWidget extends StatelessWidget {
  const LoginTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome Back", style: TextStyles.font32BlueBold),
        SizedBox(height: 10.h),
        Text(
          "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
          style: TextStyles.fon13GeryRegular.copyWith(
            fontSize: 16.sp,
            height: 1.57,
          ),
        ),
      ],
    );
  }
}
