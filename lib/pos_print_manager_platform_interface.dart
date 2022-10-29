import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pos_print_manager_method_channel.dart';

abstract class PosPrintManagerPlatform extends PlatformInterface {
  /// Constructs a PosPrintManagerPlatform.
  PosPrintManagerPlatform() : super(token: _token);

  static final Object _token = Object();

  static PosPrintManagerPlatform _instance = MethodChannelPosPrintManager();

  /// The default instance of [PosPrintManagerPlatform] to use.
  ///
  /// Defaults to [MethodChannelPosPrintManager].
  static PosPrintManagerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PosPrintManagerPlatform] when
  /// they register themselves.
  static set instance(PosPrintManagerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
