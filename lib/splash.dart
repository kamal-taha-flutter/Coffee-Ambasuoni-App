import 'package:cofee_shop/core/helpers/extentions.dart';
import 'package:cofee_shop/core/routing/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _scaleAnimation;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1600),
      vsync: this,
    );

    _scaleAnimation = TweenSequence<double>(
      [
        TweenSequenceItem(
          tween: Tween<double>(begin: 0.85, end: 1.05).chain(
            CurveTween(curve: Curves.easeOutBack),
          ),
          weight: 70,
        ),
        TweenSequenceItem(
          tween: Tween<double>(begin: 1.05, end: 1.0).chain(
            CurveTween(curve: Curves.easeOut),
          ),
          weight: 30,
        ),
      ],
    ).animate(_animationController);

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.7, curve: Curves.easeIn),
      ),
    );

    _animationController.forward();

    Future.delayed(const Duration(seconds: 2), () {
      context.pushNamed(Routes.onBoardingView);
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
              child: Image.asset('assets/splash/logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}