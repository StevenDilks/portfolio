import 'package:get/get.dart';
import 'package:universal_html/html.dart' as html;

class AppController extends GetxController {
  final RxDouble global = 5.0.obs;
  final RxDouble title = (5 / 5 + .5).obs;
  final RxDouble header = (5 / 7 + .5).obs;
  final RxDouble subtext = (5 / 9 + .5).obs;
  final RxDouble icon = (5.0 * 2 + 20).obs;

  bool isMobile() {
    final userAgent = html.window.navigator.userAgent.toString().toLowerCase();
    return userAgent.contains("iphone") || userAgent.contains("android");
  }

  void updateValues(double value) {
    global.value = value;
    title.value = (value / 5) + .5;
    header.value = (value / 7) + .5;
    subtext.value = (value / 9) + .5;
    icon.value = value * 2 + 20;
  }
}
