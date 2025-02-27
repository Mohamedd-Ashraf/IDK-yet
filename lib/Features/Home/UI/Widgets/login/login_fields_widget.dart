import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';
import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';

class LoginFieldsWidget extends StatelessWidget {
  LoginFieldsWidget({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: emailController,

          decoration: InputDecoration(
            fillColor: Color(0xFFFDFDFF),
            filled: true,
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorManager.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorManager.primaryColor),
            ),
          ),
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 20.h),
        TextFormField(
          controller: passwordController,
          decoration: InputDecoration(
            fillColor: Color(0xFFFDFDFF),
            filled: true,
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorManager.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorManager.primaryColor),
            ),
          ),
          textInputAction: TextInputAction.done,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                Text("Remember me", style: TextStyles.fon13GeryRegular),
              ],
            ),

            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: ColorManager.primaryColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
