import 'package:flutter/material.dart';
import 'package:portfolio/core/const/app_const.dart';
import 'package:portfolio/core/extensions/context_ext.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DesktopSkillsSection extends StatelessWidget {
  const DesktopSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.lightGrey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            "Skills",
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.darkBlue,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "The skills, tools and technologies I am really good at:",
          style: context.textTheme.bodyMedium?.copyWith(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.darkBlue,
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 45.h,
          child: Wrap(
            spacing: 42,
            runSpacing: 16,
            children: List.generate(
              AppConstants.skills.length,
              (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppConstants.skills[index].imagePath),
                  const SizedBox(height: 16),
                  Text(
                    AppConstants.skills[index].title,
                    style: context.textTheme.bodyMedium?.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.darkBlue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // child: Scrollbar(
          //   child: GridView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: AppConstants.skills.length,
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //       mainAxisSpacing: 4,
          //       crossAxisSpacing: 4,
          //       childAspectRatio: 1,
          //     ),
          //     itemBuilder: (context, index) {
          //       var skill = AppConstants.skills[index];
          //       return Column(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Image.asset(skill.imagePath),
          //           const SizedBox(height: 16),
          //           Text(
          //             skill.title,
          //             style: context.textTheme.bodyMedium?.copyWith(
          //               fontSize: 12.sp,
          //               fontWeight: FontWeight.w500,
          //               color: AppColors.darkBlue,
          //             ),
          //           ),
          //         ],
          //       );
          //     },
          //   ),
          // ),
        
        ),
        const Spacer(),

      ],
    );
  }
}
