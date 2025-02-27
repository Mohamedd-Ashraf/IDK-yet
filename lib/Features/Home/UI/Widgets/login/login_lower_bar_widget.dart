import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';

class LoginLowerBarWidget extends StatelessWidget {
  const LoginLowerBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(child: Divider(color: Colors.grey, thickness: 0.75)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Or sign in with",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const Expanded(child: Divider(color: Colors.grey, thickness: 0.75)),
          ],
        ),
        SizedBox(height: 30.h),
        Center(
          child: Padding(
            padding: EdgeInsets.only(left: 50.w, right: 50.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 23.sp,
                  backgroundColor: ColorManager.lightGrey,
                  child: IconButton(
                    icon: Transform.scale(
                      scale: 1.sp,
                      child: Image.asset("assets/images/google_logo.png"),
                    ),
                    onPressed: () {},
                  ),
                ),
                CircleAvatar(
                  radius: 23.sp,
                  backgroundColor: ColorManager.lightGrey,
                  child: IconButton(
                    icon: Transform.scale(
                      scale: 1.sp,
                      child: Image.asset("assets/images/facebook_logo.png"),
                    ),
                    onPressed: () {},
                  ),
                ),
                CircleAvatar(
                  radius: 23.sp,
                  backgroundColor: ColorManager.lightGrey,
                  child: IconButton(
                    icon: Transform.scale(
                      scale: 1.sp,
                      child: Image.asset("assets/images/apple_logo.png"),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30.h),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(color: Colors.grey, height: 1.4.sp),

            children: [
              const TextSpan(text: "By logging, you agree to our "),
              TextSpan(
                text: "Terms & Conditions",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const TextSpan(text: " and "),
              TextSpan(
                text: "Privacy Policy.",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30.h),

        RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.grey),
            children: [
              const TextSpan(text: "Already have an account yet? "),
              TextSpan(
                text: "Sign Up",
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
