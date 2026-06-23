import 'package:cofee_shop/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';



class Onboard2View extends StatelessWidget {
  const Onboard2View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: ColorsManger.lightergrey
        
          ),
          child: Center(
            child:  Column(
              children: [
              
                Image.asset('assets/onboarding/onboarding 2.png',
                    width: double.infinity,
                    ),
                    // Gap(10.h),
                Text('Your Favorite Coffee, Just a\n Tap Away',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'PlayfairDisplay'
                ),),
                Gap(16.h),
                Text('Your daily dose of warmth, flavor, and \ncomfort.',
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

