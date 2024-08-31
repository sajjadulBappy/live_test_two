import 'package:flutter/material.dart';
import 'package:live_test_two/responsive/size_config.dart';

class AppBarLargeScreen extends StatelessWidget {
  const AppBarLargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 3.5 * SizeConfig.textMultiplier,
        vertical: 3.5 * SizeConfig.textMultiplier
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "FLUTTER\nDART",
              style: TextStyle(
                fontSize: 2.8 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "Home",
              style: TextStyle(
                fontSize: 2.5 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "About",
              style: TextStyle(
                fontSize: 2.5 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
