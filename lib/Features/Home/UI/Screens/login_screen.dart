import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Helpers/CoreWidgets/primary_button_widget.dart';
import 'package:gedeed/Core/Routes/routes.dart';
import 'package:gedeed/Features/Home/UI/Widgets/login/login_fields_widget.dart';
import 'package:gedeed/Features/Home/UI/Widgets/login/login_lower_bar_widget.dart';
import 'package:gedeed/Features/Home/UI/Widgets/login/login_text_widget.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 25.w,
              right: 25.w,
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              children: [
                SizedBox(height: 30.h),
                LoginTextWidget(),
                SizedBox(height: 50.h),
                LoginFieldsWidget(),
                SizedBox(height: 30.h),
                PrimaryButtonWidget(
                  routeToBePusedTo: Routes.homeScreen,
                  buttonText: 'Login',
                ),
                SizedBox(height: 50.h),
                LoginLowerBarWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
