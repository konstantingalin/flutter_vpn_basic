import 'package:flutter/material.dart';
import 'package:flutter_vpn_basic/main.dart';

class CustomRoundWidget extends StatelessWidget {
  final String titleText;
  final String subTitleText;
  final Widget roundWidgetWithIcon;

  const CustomRoundWidget({
    super.key,
    required this.titleText,
    required this.subTitleText,
    required this.roundWidgetWithIcon,
  });

  @override
  Widget build(BuildContext context) {
    sizeScreen = MediaQuery.of(context).size;

    return SizedBox(
      width: sizeScreen.width * .46,
      child: Column(
        children: [
          roundWidgetWithIcon,
          const SizedBox(
            height: 12,
          ),
          Text(
            titleText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: .8,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            subTitleText,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
