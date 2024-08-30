import 'package:flutter/material.dart';
import 'package:live_test_two/responsive/size_config.dart';
import 'package:live_test_two/wigets/app_bar_large_screen.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          AppBarLargeScreen(),
        ]),
      ),
    );
  }
}
