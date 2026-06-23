import 'package:cofee_shop/core/helpers/extentions.dart';
import 'package:cofee_shop/core/routing/routes.dart';
import 'package:cofee_shop/features/intro/views/onboard1_view.dart';
import 'package:cofee_shop/features/intro/views/onboard2_view.dart';
import 'package:cofee_shop/features/intro/views/onboard3_view.dart';
import 'package:cofee_shop/features/intro/widgets/custom_button_onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});
  
  @override
  State<Onboard> createState() => _RootState();
}

class _RootState extends State<Onboard> {
  late PageController controller;
  late List<Widget> screens;
  int currentScreen = 0;
  @override
  void initState() {
    screens = [Onboard1View(), Onboard2View(), Onboard3View()];
    controller = PageController(initialPage: currentScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: screens,
            physics: NeverScrollableScrollPhysics(),
          ),

          Container(
            alignment: Alignment(0, .90),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Row(
                    children: [
                      currentScreen > 0
                          ? IconButton(
                              onPressed: () {
                                if (currentScreen > 0) {
                                  setState(() {
                                    currentScreen--;
                                  });
                                  controller.jumpToPage(currentScreen);
                                }
                              },
                              icon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(
                                  size: 30,
                                  Icons.arrow_back ,
                                  color:currentScreen == 1 ?  Colors.white : Colors.black,
                                ),
                              ),
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
                Spacer(),
              
                Gap(80.h),
                Padding(
                  padding:  EdgeInsets.only(bottom: 88.h),
                  child: CustomButtonOnboard(
                    text: currentScreen == 2 ? 'Get Started' :'Continue',
                    ontap: () {
                      setState(() {
                        currentScreen++;
                      });
                       currentScreen < screens.length
                          ? controller.jumpToPage(currentScreen)
                          : context.pushNamed(Routes.loginView);
                      ;
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
