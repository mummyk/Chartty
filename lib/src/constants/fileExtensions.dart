import 'package:get/get.dart';

class ExtensionListRepository extends GetxController {
  static ExtensionListRepository get instance => Get.find();

  List<String> videoEtx = [
    "webm",
    "mkv",
    "flv",
    "vob",
    "ogv",
    "ogg",
    "rrc",
    "gifv",
    "mng",
    "mov",
    "avi",
    "qt",
    "wmv",
    "yuv",
    "rm",
    "asf",
    "amv",
    "mp4",
    "m4p",
    "m4v",
    "mpg",
    "mp2",
    "mpeg",
    "mpe",
    "mpv",
    "m4v",
    "svi",
    "3gp",
    "3g2",
    "mxf",
    "roq",
    "nsv",
    "flv",
    "f4v",
    "f4p",
    "f4a",
    "f4b",
    "mod",
  ];

  List<String> imageEtx = [
    "jpeg",
    "png",
    "gif",
    "tiff",
    "eps",
    "ai",
    "svg",
    "psd",
  ];

  List<String> audioEtx = [
    "wav",
    "aiff",
    "wv",
    "m4a",
    "ape",
    "mpeg",
    "mp3",
    "wma",
    "aac",
  ];
}
