import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_test_two/responsive/size_config.dart';
import 'package:live_test_two/wigets/app_bar_large_screen.dart';

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
              Container(
                height: MediaQuery.of(context).size.height - 15 * SizeConfig.textMultiplier,
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
                                "FLUTTER WEB \nTHE BASIC",
                              style: TextStyle(
                                fontSize: 5 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 2.6 * SizeConfig.textMultiplier,),
                            Text(
                                "Install the latest PowerShell for new features and improvements!Install the latest PowerShell for new features and improvements! Install the latest PowerShell for new features and improvements!Install the latest PowerShell for new features and improvements!",
                              style: TextStyle(
                                fontSize: 2.5 * SizeConfig.textMultiplier,
                                color: Colors.black,
                              ),
                            )
                          ],
                        )
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:  const Color(0xFF14DF8B),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero, // Removes the border radius
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 8.5 * SizeConfig.heightMultiplier, vertical: 4 * SizeConfig.heightMultiplier),
                          ),
                          child: const Text(
                              'Join Course',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
        ]),
      ),
    );
  }
}
