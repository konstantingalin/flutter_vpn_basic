import 'package:flutter_vpn_basic/allModels/vpn_info.dart';
import 'package:flutter_vpn_basic/appPreferences/app_preferences.dart';
import 'package:get/get.dart';

class ControllerHome extends GetxController {
  final Rx<VpnInfo> vpnInfo = AppPreferences.vpnInfoObj.obs;
}
