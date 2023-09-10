class VpnInfo {
  late final String hostName;
  late final String ip;
  late final String ping;
  late final int speed;
  late final String countryLongName;
  late final String countryShortName;
  late final int vpnSessionNum;
  late final String base64OpenVPNConfigurationData;

  VpnInfo({
    required this.hostName,
    required this.ip,
    required this.ping,
    required this.speed,
    required this.countryLongName,
    required this.countryShortName,
    required this.vpnSessionNum,
    required this.base64OpenVPNConfigurationData,
  });

  VpnInfo.fromJson(Map<String, dynamic> jsonData) {
    hostName = jsonData['HostName'] ?? '';
    ip = jsonData['IP'] ?? '';
    ping = jsonData['Ping'] ?? '';
    speed = jsonData['Speed'] ?? '';
    countryLongName = jsonData['CountryLong'] ?? '';
    countryShortName = jsonData['CountryShort'] ?? '';
    vpnSessionNum = jsonData['NumVpnSessions'] ?? '';
    base64OpenVPNConfigurationData =
        jsonData['OpenVPN_ConfigData_BASE64'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final jsonData = <String, dynamic>{};

    jsonData['HostName'] = hostName;
    jsonData['IP'] = ip;
    jsonData['Ping'] = ping;
    jsonData['Speed'] = speed;
    jsonData['CountryLong'] = countryLongName;
    jsonData['CountryShort'] = countryShortName;
    jsonData['NumVpnSessions'] = vpnSessionNum;
    jsonData['OpenVPN_ConfigData_BASE64'] = base64OpenVPNConfigurationData;

    return jsonData;
  }
}
