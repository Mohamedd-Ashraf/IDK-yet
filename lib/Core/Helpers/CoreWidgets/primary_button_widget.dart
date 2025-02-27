import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Helpers/extensions.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';
import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String routeToBePusedTo;
  final String buttonText;

  const PrimaryButtonWidget({
    super.key,
    required this.routeToBePusedTo,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(routeToBePusedTo);
      },
      style: ButtonStyle(
        // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: WidgetStateProperty.all(ColorManager.primaryColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        ),
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 52.h)),
      ),
      child: Text(buttonText, style: TextStyles.font16WhiteSemiBold),
    );
  }
}
