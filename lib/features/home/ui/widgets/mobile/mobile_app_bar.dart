import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/context_ext.dart';
import 'package:portfolio/core/extensions/padding_extensions.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "<AH />",
          style: context.textTheme.bodyMedium?.copyWith(
            fontSize: 16.sp,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: Icon(Icons.menu, color: AppColors.darkBlue),
        ),
      ],
    ).setPageHorizontalPadding();
  }
}
