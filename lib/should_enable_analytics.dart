import 'dart:async';

import 'package:flutter/services.dart';

class ShouldEnableAnalytics {
  static const MethodChannel _channel =
      const MethodChannel('should_enable_analytics');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
