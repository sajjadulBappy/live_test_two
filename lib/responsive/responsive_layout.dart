import 'package:flutter/material.dart';
import 'package:live_test_two/screens/home/home_desktop.dart';
import 'package:live_test_two/screens/home/home_mobile.dart';
import 'package:live_test_two/screens/home/home_tablet.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth < 600){
            return const HomeMobile();
          }else if(constraints.maxWidth < 1200){
            return const HomeTablet();
          }else{
            return const HomeDesktop();
          }
        }
      ),
    );
  }
}
