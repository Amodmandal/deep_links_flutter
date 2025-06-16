import 'package:get/get.dart';

import '../utils/deeplinkservices.dart';

class AppController extends GetxController {
  final DeepLinkService _deepLinkService = DeepLinkService();

  @override
  void onInit() {
    super.onInit();
    _deepLinkService.initDeepLinks();
  }

  @override
  void onClose() {
    super.onClose();
  }
}