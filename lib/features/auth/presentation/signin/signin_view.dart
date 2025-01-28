import 'package:fakahani_dashboard/core/helpers/extensions/localization_extension.dart';
import 'package:fakahani_dashboard/core/widgets/custom_secondary_app_bar.dart';
import 'package:fakahani_dashboard/features/auth/presentation/signin/widgets/signin_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customSecondaryAppBar(
        context,
        onBackPress: SystemNavigator.pop,
        title: context.localization.login,
      ),
      body: const SigninBlocConsumer(),
    );
  }
}
