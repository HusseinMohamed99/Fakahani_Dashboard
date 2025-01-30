import 'package:fakahani_dashboard/core/helpers/extensions/localization_extension.dart';
import 'package:fakahani_dashboard/core/helpers/responsive/spacing.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:fakahani_dashboard/features/settings/presentation/views/widgets/general_settings_widget.dart';
import 'package:fakahani_dashboard/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<Widget> generalSettingsList(
  BuildContext context,
  bool isNotificationsEnabled,
  bool isDarkModeEnabled,
  ValueChanged<bool> onChangedTheme,
  ValueChanged<bool> onChangedNotifications,
) =>
    [
      GeneralSettingsWidget(
          title: context.localization.personal_profile,
          leadingIcon: Assets.images.user),
      GeneralSettingsWidget(
          title: context.localization.my_orders,
          leadingIcon: Assets.images.box),
      GeneralSettingsWidget(
          title: context.localization.payments,
          leadingIcon: Assets.images.emptyWallet),
      GeneralSettingsWidget(
          title: context.localization.favorites,
          leadingIcon: Assets.images.heart),
      GeneralSettingsWidget(
        title: context.localization.notifications,
        leadingIcon: Assets.images.notification,
        trailing: Switch(
          inactiveTrackColor: ColorManager.grey,
          thumbIcon: WidgetStateProperty.resolveWith<Icon?>((states) {
            if (states.contains(WidgetState.selected)) {
              return const Icon(
                Icons.check_circle,
                size: 28,
                color: Colors.white,
              ); // Active icon
            }
            return const Icon(
              Icons.circle,
              size: 26,
              color: Colors.white,
            ); // Inactive icon
          }),
          value: isNotificationsEnabled,
          onChanged: (value) {
            isNotificationsEnabled = value;
            onChangedNotifications(value);
          },
        ),
      ),
      GeneralSettingsWidget(
        title: context.localization.language,
        leadingIcon: Assets.images.global,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.localization.english,
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
        title: context.localization.theme_mode,
        leadingIcon: Assets.images.magicpen,
        trailing: Switch(
          inactiveTrackColor: ColorManager.grey,
          thumbIcon: WidgetStateProperty.resolveWith<Icon?>((states) {
            if (states.contains(WidgetState.selected)) {
              return const Icon(
                Icons.check_circle,
                size: 28,
                color: Colors.white,
              ); // Active icon
            }
            return const Icon(
              Icons.circle,
              size: 26,
              color: Colors.white,
            ); // Inactive icon
          }),
          value: isDarkModeEnabled,
          onChanged: (value) {
            isDarkModeEnabled = value;
            onChangedTheme(value);
          },
        ),
      ),
    ];
