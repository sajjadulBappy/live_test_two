import 'package:flutter/material.dart';
import 'package:live_test_two/constent.dart';
import 'package:live_test_two/wigets/app_bar_large_screen.dart';
import 'package:live_test_two/wigets/button_wiget.dart';

import '../../responsive/size_config.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarLargeScreen(),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 3.9 * SizeConfig.textMultiplier,
                      vertical: 3 * SizeConfig.textMultiplier
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        titleText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 5 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 2.6 * SizeConfig.textMultiplier,),
                      Text(
                        infoText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 2.5 * SizeConfig.textMultiplier,
                          color: Colors.black,

                        ),
                      ),
                      SizedBox(height: 14 * SizeConfig.heightMultiplier,),
                      const ButtonWiget(),

                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
