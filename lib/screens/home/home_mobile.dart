import 'package:flutter/material.dart';
import 'package:live_test_two/constent.dart';
import 'package:live_test_two/wigets/button_wiget.dart';

import '../../responsive/size_config.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "FLUTTER\nDART",
              style: TextStyle(
                fontSize: 2.5 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Flutter",
                    style: TextStyle(
                      fontSize: 3 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF14DF8B),
                    ),
                  ),
                  Text(
                    "welcome menu",
                    style: TextStyle(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      color: const Color(0xFF14DF8B),
                    ),
                  )
                ],
              ),

            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.comment),
              title: const Text('Comment'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
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
             const SizedBox(
                width: double.infinity,
                child: ButtonWiget(),
            )

          ],
        ),
      ),
    );
  }
}
