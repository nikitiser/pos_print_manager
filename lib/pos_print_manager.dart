library pos_print_manager;

import 'package:easy_logger/easy_logger.dart';

class PosPrinterManager {
  static EasyLogger logger = EasyLogger(
    name: 'pos_printer_manager',
    defaultLevel: LevelMessages.debug,
    enableBuildModes: [BuildMode.debug, BuildMode.profile, BuildMode.release],
    enableLevels: [
      LevelMessages.debug,
      LevelMessages.info,
      LevelMessages.error,
      LevelMessages.warning
    ],
  );
}
