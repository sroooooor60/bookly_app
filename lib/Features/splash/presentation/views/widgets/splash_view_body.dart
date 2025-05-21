import 'package:bookly_app/Features/splash/presentation/views/widgets/slide_text.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigatToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
    //حذفنا الليسنر علشان حطينا الأنيميتد بيلدر
    // animationController.addListener(() {
    //   setState(() {});
    // });
  }

  void navigatToHome() {
    Future.delayed(Duration(seconds: 2), () {
      // Get.to(
      //   () => const HomeView(),
      //   //شكل الانتقال إلي الصفحة التالية
      //   transition: Transition.zoom,
      //   duration: kDurationTransition,
      // );

      GoRouter.of(context).push(AppRouters.kHomeView);
    });
  }
}
