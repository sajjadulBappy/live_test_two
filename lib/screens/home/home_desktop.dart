import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_test_two/constent.dart';
import 'package:live_test_two/responsive/size_config.dart';
import 'package:live_test_two/wigets/app_bar_large_screen.dart';
import 'package:live_test_two/wigets/button_wiget.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Expanded(
                        flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                titleText,
                                style: TextStyle(
                                  fontSize: 5 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 2.6 * SizeConfig.textMultiplier,),
                              Text(
                                infoText,
                                style: TextStyle(
                                  fontSize: 2.5 * SizeConfig.textMultiplier,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )
                      ),
                      const Expanded(
                        flex: 2,
                        child: Center(
                          child: ButtonWiget(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
        ]),
      ),
    );
  }
}
