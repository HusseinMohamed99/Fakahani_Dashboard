import 'package:fakahani_dashboard/features/settings/presentation/views/widgets/general_sttings_list.dart';
import 'package:flutter/material.dart';

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
