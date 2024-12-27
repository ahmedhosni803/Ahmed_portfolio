import 'package:flutter/material.dart';
import 'package:portfolio/core/const/app_const.dart';
import 'package:portfolio/core/extensions/context_ext.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MobileSkillsSection extends StatefulWidget {
  const MobileSkillsSection({super.key});

  @override
  State<MobileSkillsSection> createState() => _MobileSkillsSectionState();
}

class _MobileSkillsSectionState extends State<MobileSkillsSection> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            "Skills",
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.darkBlue,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "The skills, tools and technologies I am really good at:",
          style: context.textTheme.bodyMedium?.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.darkBlue,
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 45.h,
          width: 80.w,
          child: Scrollbar(
            controller: scrollController,
            child: GridView.builder(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: AppConstants.skills.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                childAspectRatio: 1.2,
              ),
              itemBuilder: (context, index) {
                var skill = AppConstants.skills[index];
                return Column(
                  children: [
                    Image.asset(skill.imagePath),
                    const SizedBox(height: 16),
                    Text(
                      skill.title,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkBlue,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
