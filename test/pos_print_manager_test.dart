import 'package:flutter_test/flutter_test.dart';
import 'package:pos_print_manager/pos_print_manager.dart';
import 'package:pos_print_manager/pos_print_manager_platform_interface.dart';
import 'package:pos_print_manager/pos_print_manager_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPosPrintManagerPlatform
    with MockPlatformInterfaceMixin
    implements PosPrintManagerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PosPrintManagerPlatform initialPlatform = PosPrintManagerPlatform.instance;

  test('$MethodChannelPosPrintManager is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPosPrintManager>());
  });

  test('getPlatformVersion', () async {
    PosPrintManager posPrintManagerPlugin = PosPrintManager();
    MockPosPrintManagerPlatform fakePlatform = MockPosPrintManagerPlatform();
    PosPrintManagerPlatform.instance = fakePlatform;

    expect(await posPrintManagerPlugin.getPlatformVersion(), '42');
  });
}
