import 'dart:convert';

import 'package:flutter/services.dart';

abstract class ConfigReader {
  static Map<String, dynamic> _config = {};

  static Future<void> initialize() async {
    final configString = await rootBundle.loadString("config/app_config.json");
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  static int getIncrement() {
    return _config['incrementAmount'] as int;
  }

  static String getMessage() {
    return _config['message'] as String;
  }
}
