import 'package:cofee_shop/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonOnboard extends StatelessWidget {
  const CustomButtonOnboard({
    super.key,
    required this.text,
    required this.ontap,
  });
  final String text;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: ontap,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(ColorsManger.primary),
          padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(horizontal: 121.h, vertical: 12.w),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: ColorsManger.lightPrimary,
            fontFamily: 'PlayfairDisplay',
          ),
        ),
      ),
    );
  }
}
