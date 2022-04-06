
import 'dart:async';

import 'package:flutter/services.dart';

class Toaster {
  static const MethodChannel _channel = MethodChannel('toaster');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
