import 'package:fakahani_dashboard/features/settings/presentation/views/widgets/general_settings_list.dart';
import 'package:flutter/material.dart';

class GeneralSettingListView extends StatefulWidget {
  const GeneralSettingListView({super.key});

  @override
  State<GeneralSettingListView> createState() => _GeneralSettingListViewState();
}

class _GeneralSettingListViewState extends State<GeneralSettingListView> {
  bool isNotificationEnabled = true;
  bool isDarkModeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return generalSettingsList(
          context,
          isNotificationEnabled,
          isDarkModeEnabled,
          (value) {
            setState(() {});
            isDarkModeEnabled = value;
          },
          (value) {
            setState(() {});
            isNotificationEnabled = value;
          },
        )[index];
      },
    );
  }
}
