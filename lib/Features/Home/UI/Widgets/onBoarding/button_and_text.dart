import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Helpers/extensions.dart';
import 'package:gedeed/Core/Routes/routes.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';
import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';

class OnBoardingButtonAndText extends StatelessWidget {
  const OnBoardingButtonAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Text(
            "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
            style: TextStyles.fon13GeryRegular,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          ElevatedButton(
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
            style: ButtonStyle(
              // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: WidgetStateProperty.all(
                ColorManager.primaryColor,
              ),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
              minimumSize: WidgetStateProperty.all(Size(double.infinity, 52.h)),
            ),
            child: Text("Get Started", style: TextStyles.font16WhiteSemiBold),
          ),
        ],
      ),
    );
  }
}
