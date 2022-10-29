import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pos_print_manager_platform_interface.dart';

/// An implementation of [PosPrintManagerPlatform] that uses method channels.
class MethodChannelPosPrintManager extends PosPrintManagerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pos_print_manager');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
