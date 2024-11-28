import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sxd_method_channel.dart';

abstract class SxdPlatform extends PlatformInterface {
  SxdPlatform() : super(token: _token);

  static final Object _token = Object();

  static SxdPlatform _instance = MethodChannelSxd();

  static SxdPlatform get instance => _instance;

  static set instance(SxdPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<dynamic> setDatalogerByP0x18(Map<String, dynamic> map);

  Future<dynamic> parserPro0x18(String hex);

  Future<dynamic> setDatalogerByP0x19(Map<String, dynamic> map);

  Future<dynamic> parserPro0x19(String hex);
}
