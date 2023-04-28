import 'package:flutter/widgets.dart';

class MyGlobals {
  static final MyGlobals _singleton = MyGlobals._internal();

  factory MyGlobals() {
    return _singleton;
  }

  MyGlobals._internal();

  late MediaQueryData _mediaQueryData =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window);

  set mediaQueryData(MediaQueryData data) {
    _mediaQueryData = data;
  }

  MediaQueryData get mediaQueryData => _mediaQueryData;
}
