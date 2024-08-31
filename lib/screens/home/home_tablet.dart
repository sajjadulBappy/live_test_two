import 'package:flutter/material.dart';
import 'package:live_test_two/wigets/app_bar_large_screen.dart';

import '../../responsive/size_config.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return  const Scaffold(
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
