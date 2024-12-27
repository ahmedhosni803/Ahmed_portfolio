import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/core/extensions/padding_extensions.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/features/home/ui/widgets/scroll_controller_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../desktop/home_section/profile_image.dart';

class MobileHomeSection extends StatelessWidget {
  const MobileHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        Expanded(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SelectionArea(
                        child: Text(
                          "Hi, I'm Ahmed Hosni",
                          style: GoogleFonts.aBeeZee(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Lottie.asset(Assets.lottie.handWave, height: 5.h),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'I am a',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.darkBlue,
                          ),
                        ),
                        const SizedBox(width: 10),
                        DefaultTextStyle(
                          style: GoogleFonts.aBeeZee(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.darkGrey,
                          ),
                          child: AnimatedTextKit(
                            repeatForever: true,
                            animatedTexts: [
                              RotateAnimatedText('Software Engineer'),
                              RotateAnimatedText('Mobile Engineer'),
                            ],
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.darkBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {
                      var scrollCtrl = ScrollControllerProvider.of(context)
                          ?.itemScrollController;
                      scrollCtrl?.scrollTo(
                          index: 3, duration: const Duration(seconds: 1));
                    },
                    child: Text(
                      "Contact Me",
                      style: GoogleFonts.aBeeZee(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: ProfileImage(height: 25),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectionArea(
                child: Text(
                  'Ambitious Mobile Developer with over 2 years of experience in building scalable and user-friendly mobile applications using Flutter and Dart. Skilled in clean architecture, state management (Provider, Bloc), and integrating APIs, Firebase services, and payment gateways like Paymob, Stripe, PayPal, Apple Pay, and Google Pay.',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.darkGrey,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(
                  Icons.location_on,
                  color: AppColors.darkBlue,
                ),
                title: Text(
                  "cairo, Egypt",
                  style: GoogleFonts.aBeeZee(),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(
                  Icons.circle,
                  size: 20,
                  color: AppColors.green,
                ),
                title: Text(
                  "Available for new projects",
                  style: GoogleFonts.aBeeZee(),
                ),
              ),
            ],
          ),
        ),
      ],
    ).setPageHorizontalPadding();
  }
}
