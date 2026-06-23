import 'package:cofee_shop/core/routing/app_router.dart';
import 'package:cofee_shop/core/routing/routes.dart';
import 'package:cofee_shop/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
   await ScreenUtil.ensureScreenSize();
  runApp(const CofeeShopApp());
}
class CofeeShopApp extends StatelessWidget {
  const CofeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: ColorsManger.primary,
          scaffoldBackgroundColor: Color(0xffFFF8F2)
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        onGenerateRoute: AppRouter().generateRoute,
      ),
    );
  }
}
