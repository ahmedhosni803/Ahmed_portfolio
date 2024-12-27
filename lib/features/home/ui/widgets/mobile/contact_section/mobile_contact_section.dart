import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portfolio/core/extensions/context_ext.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/features/home/ui/widgets/contact_link_item.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MobileContactSection extends StatelessWidget {
  const MobileContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              "Get in touch",
              style: context.textTheme.bodyMedium?.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.darkBlue,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "What’s next? Feel free to reach out to me if you're looking for\na developer, have a query, or simply want to connect.",
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.darkBlue,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Spacer(),
              Icon(
                Ionicons.mail_outline,
                color: AppColors.darkGrey,
                size: 20,
              ),
              const SizedBox(width: 4),
              Text(
                "amr.mustafa.elnaggar@gmail.com",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darkBlue,
                ),
              ),
              const SizedBox(width: 4),
              IconButton(
                icon: const Icon(
                  Ionicons.copy_outline,
                  size: 20,
                ),
                color: AppColors.darkGrey,
                onPressed: () async {
                  await Clipboard.setData(
                    const ClipboardData(
                        text: "ahmedhosni803@gmail.com@gmail.com"),
                  );
                  Fluttertoast.showToast(
                    msg: "Copied to clipboard",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    webBgColor: "#111827",
                    backgroundColor: AppColors.darkBlue,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
              ),
              const Spacer(),
            ],
          ),
          Row(
            children: [
              const Spacer(),
              Icon(
                Ionicons.call_outline,
                color: AppColors.darkGrey,
                size: 20,
              ),
              const SizedBox(width: 4),
              Text(
                "+201060295480",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darkBlue,
                ),
              ),
              const SizedBox(width: 4),
              IconButton(
                icon: const Icon(
                  Ionicons.copy_outline,
                  size: 20,
                ),
                color: AppColors.darkGrey,
                onPressed: () async {
                  await Clipboard.setData(
                    const ClipboardData(text: "+201060295480"),
                  );
                  Fluttertoast.showToast(
                    msg: "Copied to clipboard",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    webBgColor: "#111827",
                    backgroundColor: AppColors.darkBlue,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            "You may also find me on these platforms!",
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.darkBlue,
            ),
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContactLinkItem(
                link: 'https://www.linkedin.com/in/ahmed-hosni-705814240/',
                icon: Ionicons.logo_linkedin,
              ),
              SizedBox(width: 8),
              ContactLinkItem(
                link: 'https://github.com/ahmedhosni803',
                icon: Ionicons.logo_github,
              ),
              SizedBox(width: 8),
              ContactLinkItem(
                link: 'https://wa.me/+201060295480',
                icon: Ionicons.logo_whatsapp,
              ),
              // SizedBox(width: 8),
              // ContactLinkItem(
              //   link: 'https://x.com/amr_6051',
              //   icon: Ionicons.logo_twitter,
              // ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            color: AppColors.lightGrey,
            height: 10.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "© 2024 | Designed and coded with Flutter by Ahmed Hosni",
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
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
