import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HDeviceUtiles {
  static get defalutTargetPlatform => TargetPlatform;

  static void hideKeyboard({required BuildContext context}) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor({required Color color}) async {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  static bool isLandScapeOrientation({required BuildContext context}) {
    final orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.landscape;
  }

  static bool isPortraitOrientation({required BuildContext context}) {
    final orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.portrait;
  }

  static void setFullScreen({required bool enable}) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersive : SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight({required BuildContext context}) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth({required BuildContext context}) {
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio({required BuildContext context}) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  static double getStatusBarHeight({required BuildContext context}) {
    return MediaQuery.of(context).padding.top;
  }

  static double getKeyBoardHeight({required BuildContext context}) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom;
  }

  static bool isKeyBoardVisible({required BuildContext context}) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom > 0;
  }

  static Future<bool> isPhisicalDevice() async {
    return defalutTargetPlatform == TargetPlatform.android ||
        defalutTargetPlatform == TargetPlatform.iOS;
  }

  static void vibrate({required Duration duration}) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  static Future<void> setPreferredOrientations(
      {required List<DeviceOrientation> orientations}) async {
    SystemChrome.setPreferredOrientations(orientations);
  }

  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  Future<bool> checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } catch (_) {
      return false;
    }
    return false;
  }

  static bool isIos() {
    return Platform.isIOS;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static void launchUrl({required String url}) async {
    if (await canLaunchUrlString(url)) {
      launchUrlString(url);
    } else {
      throw "could not launch $url";
    }
  }
}
