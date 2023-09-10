import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vpn_basic/appPreferences/app_preferences.dart';
import 'package:flutter_vpn_basic/main.dart';
import 'package:flutter_vpn_basic/widgets/custom_round_widget.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    sizeScreen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('Free Vpn'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.perm_device_info),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.changeThemeMode(
                AppPreferences.isModeDark ? ThemeMode.light : ThemeMode.dark,
              );

              AppPreferences.isModeDark = !AppPreferences.isModeDark;
            },
            icon: const Icon(Icons.brightness_2_outlined),
          ),
        ],
      ),
      bottomNavigationBar: locationSelectionBottomNavigation(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRoundWidget(
                titleText: 'Location',
                subTitleText: 'FREE',
                roundWidgetWithIcon: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.redAccent,
                  child: Icon(
                    Icons.flag_circle,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              CustomRoundWidget(
                titleText: '60 ms',
                subTitleText: 'PING',
                roundWidgetWithIcon: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.black54,
                  child: Icon(
                    Icons.graphic_eq,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          vpnRoundButton(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRoundWidget(
                titleText: '0 kb',
                subTitleText: 'DOWNLOAD',
                roundWidgetWithIcon: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.arrow_circle_down,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              CustomRoundWidget(
                titleText: '0 kbps',
                subTitleText: 'UPLOAD',
                roundWidgetWithIcon: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.purpleAccent,
                  child: Icon(
                    Icons.arrow_circle_up_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  locationSelectionBottomNavigation(BuildContext context) {
    return SafeArea(
      child: Semantics(
        button: true,
        child: InkWell(
          onTap: () {},
          child: Container(
            color: Colors.redAccent,
            padding: EdgeInsets.symmetric(horizontal: sizeScreen.width * 0.041),
            height: 62,
            child: const Row(
              children: [
                Icon(
                  CupertinoIcons.flag_circle,
                  color: Colors.white,
                  size: 36,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Select Country / Location',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.redAccent,
                    size: 26,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget vpnRoundButton() {
    return Column(
      children: [
        Semantics(
          button: true,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(100),
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Container(
                  width: sizeScreen.width * .14,
                  height: sizeScreen.height * .14,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.power_settings_new,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Tap to Connect',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
