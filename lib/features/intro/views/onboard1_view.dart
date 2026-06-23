import 'package:cofee_shop/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';



class Onboard1View extends StatelessWidget {
  const Onboard1View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: ColorsManger.lightPrimary
        
          ),
          child: Center(
            child:  Column(
              children: [
                Gap(130.h),
                Image.asset('assets/onboarding/onboarding1.png',
                    width: double.infinity,
                    ),
                    Gap(50.h),
                Text('Brewed Just for You',style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'PlayfairDisplay'
                ),),
                Gap(16.h),
                Text('Because every cup should feel like it’s made \n for you',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'PlayfairDisplay'
                ),)
      
              ],
            ),
              
            ))
          
          
        ),
    );
  }
}

