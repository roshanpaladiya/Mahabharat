import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingController extends GetxController {
  bool isLiteTheme = false;

  final Uri privacyAndPolicyUrl = Uri.parse('https://panchat.in/en/conditions-of-use');
  final Uri termAndCondition = Uri.parse('https://panchat.in/en/conditions-of-use');

  Future<void> share() async {
    await FlutterShare.share(
      title: 'In-ShortApp',
      linkUrl: 'app link attached',
    );
  }

  void rate() {}

  void lightTheme() {
    isLiteTheme = !isLiteTheme;
    update(["isLight"]);
  }

  Future<void> tAndC() async {
    if (!await launchUrl(privacyAndPolicyUrl)) {
      throw Exception('Could not launch $privacyAndPolicyUrl');
    }
    update(['ReportAccountMisuse']);
  }

  Future<void> pAndP() async {
    if (!await launchUrl(privacyAndPolicyUrl)) {
      throw Exception('Could not launch $privacyAndPolicyUrl');
    }
    update(['ReportAccountMisuse']);
  }
}
