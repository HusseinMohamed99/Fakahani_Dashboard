import 'package:fakahani_dashboard/core/helpers/extensions/localization_extension.dart';
import 'package:fakahani_dashboard/core/helpers/extensions/widget_extension.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:fakahani_dashboard/features/settings/presentation/views/widgets/avatar_image_widget.dart';
import 'package:fakahani_dashboard/features/settings/presentation/views/widgets/general_settings_list_view.dart';
import 'package:fakahani_dashboard/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AvatarImageWidget(),
              Text(
                context.localization.general,
                style: TextStyleManager.semiBold13(context: context),
              ).onlyPadding(
                bottomPadding: kPaddingDefaultVertical.h,
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    const GeneralSettingListView(),
                    SliverToBoxAdapter(
                      child: Text(
                        context.localization.help,
                        style: TextStyleManager.semiBold13(context: context),
                      ).vPadding(
                        kPaddingDefaultVertical.h,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Card(
                        margin: EdgeInsets.zero,
                        elevation: 2,
                        shape: const RoundedRectangleBorder(),
                        child: ListTile(
                          leading: SvgPicture.asset(Assets.images.infoCircle),
                          title: Text(
                            context.localization.about_us,
                            style:
                                TextStyleManager.semiBold13(context: context),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ).allPadding(
              vPadding: kPaddingDefaultVertical.h,
              hPadding: kPaddingDefaultHorizontal.w),
        ),
        Card(
          margin: EdgeInsets.zero,
          elevation: 2,
          shape: const RoundedRectangleBorder(),
          child: ListTile(
            title: Center(
              child: Text(
                context.localization.logout,
                style: TextStyleManager.semiBold13(context: context),
              ),
            ),
            trailing: SvgPicture.asset(Assets.images.logout)
                .onlyPadding(leftPadding: kSpacingDefault.w),
          ),
        ).onlyPadding(
          bottomPadding: kPaddingDefaultVertical.h,
        ),
      ],
    );
  }
}
