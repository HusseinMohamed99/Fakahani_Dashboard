import 'package:fakahani_dashboard/core/helpers/extensions/responsive_size_extension.dart';
import 'package:fakahani_dashboard/core/helpers/extensions/widget_extension.dart';
import 'package:fakahani_dashboard/core/helpers/functions/get_user.dart';
import 'package:fakahani_dashboard/core/helpers/responsive/spacing.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:fakahani_dashboard/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AvatarImageWidget().onlyPadding(
          bottomPadding: kPaddingDefaultVertical.h,
        ),
        Text(
          'General',
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
                  'Security',
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
                      'About Us',
                      style: TextStyleManager.semiBold13(context: context),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
            ],
          ),
        ),
        IntrinsicWidth(
          stepWidth: context.screenWidth,
          child: Card(
            margin: EdgeInsets.zero,
            elevation: 2,
            shape: const RoundedRectangleBorder(),
            child: ListTile(
              leading: SvgPicture.asset(Assets.images.logout),
              title: Text(
                'Change Password',
                style: TextStyleManager.semiBold13(context: context),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ).onlyPadding(
            topPadding: kMaxSpacing.h,
            bottomPadding: kSpacingXLarge.h,
          ),
        ),
      ],
    ).allPadding(
        vPadding: kPaddingDefaultVertical.h,
        hPadding: kPaddingDefaultHorizontal.w);
  }
}

class AvatarImageWidget extends StatelessWidget {
  const AvatarImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: 89.h,
      child: Row(
        spacing: kSpacingXLarge.w,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 73.w,
                height: 73.h,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.images.imageProfileTest.path),
                    fit: BoxFit.fill,
                  ),
                  shape: const OvalBorder(),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                top: 57.h,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  width: 40.w,
                  height: 40.h,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF9F9F9),
                    shape: BoxShape.circle,
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: ColorManager.pureWhite,
                        width: 1,
                      ),
                    ),
                  ),
                  child: SvgPicture.asset(Assets.images.camera),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              spacing: kSpacingSmaller.h,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getUser().name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyleManager.bold13(context: context).copyWith(
                    color: ColorManager.darkBlack,
                  ),
                ),
                Text(
                  getUser().email,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyleManager.regular13(context: context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GeneralSettingsWidget extends StatelessWidget {
  const GeneralSettingsWidget(
      {super.key,
      required this.title,
      required this.leadingIcon,
      this.trailing});
  final String title, leadingIcon;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 2,
      shape: const RoundedRectangleBorder(),
      child: ListTile(
        leading: SvgPicture.asset(leadingIcon),
        title: Text(
          title,
          style: TextStyleManager.semiBold13(context: context),
        ),
        trailing: trailing ?? const Icon(Icons.arrow_forward_ios),
      ),
    ).onlyPadding(
      bottomPadding: kPaddingSmallVertical.h,
    );
  }
}

class GeneralSettingListView extends StatelessWidget {
  const GeneralSettingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return generalSettingsList(context)[index];
      },
    );
  }
}

List<Widget> generalSettingsList(BuildContext context) => [
      GeneralSettingsWidget(
          title: 'Personal Profile', leadingIcon: Assets.images.user),
      GeneralSettingsWidget(title: 'My Order', leadingIcon: Assets.images.box),
      GeneralSettingsWidget(
          title: 'Payments', leadingIcon: Assets.images.emptyWallet),
      GeneralSettingsWidget(
          title: 'Favorites', leadingIcon: Assets.images.heart),
      GeneralSettingsWidget(
        title: 'Notifications',
        leadingIcon: Assets.images.notification,
        trailing: Switch(
          value: true,
          onChanged: (value) {},
        ),
      ),
      GeneralSettingsWidget(
        title: 'Language',
        leadingIcon: Assets.images.global,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'English',
              style: TextStyleManager.regular13(context: context).copyWith(
                color: ColorManager.darkBlack,
              ),
            ),
            horizontalSpacing(kSpacingSmaller.w),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
      GeneralSettingsWidget(
        title: 'Theme Mode',
        leadingIcon: Assets.images.magicpen,
        trailing: Switch(
          value: false,
          onChanged: (value) {},
        ),
      ),
    ];
