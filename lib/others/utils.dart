import 'package:url_launcher/url_launcher.dart';

class Utils {
  Utils._internal();

  static final Utils _instance = Utils._internal();

  factory Utils() {
    return _instance;
  }

  static launchHttpUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
