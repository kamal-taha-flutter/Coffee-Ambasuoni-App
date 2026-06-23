import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';



class Onboard3View extends StatelessWidget {
  const Onboard3View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white
        
          ),
          child: Center(
            child:  Column(
              children: [
              
                Image.asset('assets/onboarding/onboarding 3.png',
                    width: double.infinity,
                    ),
                     Gap(30.h),
                Text('Let’s Get Brewing',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'PlayfairDisplay'
                ),),
                Gap(16.h),
                Text('Explore the menu, place your first order, and \n enjoy your coffee',
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

