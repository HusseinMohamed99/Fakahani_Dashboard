import 'package:fakahani_dashboard/core/widgets/build_app_bar.dart';
import 'package:fakahani_dashboard/features/settings/presentation/views/widgets/settings_view_body.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Settings'),
      body: const SettingsViewBody(),
    );
  }
}
