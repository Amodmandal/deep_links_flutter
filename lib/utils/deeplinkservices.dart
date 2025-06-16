import 'package:app_links/app_links.dart';
import 'package:deep_linking_flutter/view/loginscreen/loginscreen.dart';
import 'package:get/get.dart';
import 'dart:async';

class DeepLinkService {
  final AppLinks appLinks = AppLinks();

  Future<void> initDeepLinks() async {
    appLinks.uriLinkStream.listen((Uri? uri) {
      if (uri != null) {
        handleDeepLink(uri);
      }
    }, onError: (err) => print('Deep link error: $err'));
  }

  void handleDeepLink(Uri uri) {
    if (uri.host == 'foo.com' || uri.path == '/foo.com') {
      Get.offAll(SignInScreen());
    } else {
      print('error fetching links');
    }
  }
}
