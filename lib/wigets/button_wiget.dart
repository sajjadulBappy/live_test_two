import 'package:flutter/material.dart';
import 'package:live_test_two/responsive/size_config.dart';

class ButtonWiget extends StatelessWidget {
  const ButtonWiget({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return ElevatedButton(
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
    );
  }
}
