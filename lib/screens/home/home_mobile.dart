import 'package:flutter/material.dart';

import '../../responsive/size_config.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Text("mobile", style: TextStyle(fontSize: 3 * SizeConfig.textMultiplier),),
    );
  }
}
